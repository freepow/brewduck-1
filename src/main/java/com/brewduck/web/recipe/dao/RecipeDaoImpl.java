package com.brewduck.web.recipe.dao;

import com.brewduck.web.domain.Recipe;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * <pre>
 * 맥주 레시피 DAO 구현체.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.20
 */
@Repository("recipeDao")
public class RecipeDaoImpl implements RecipeDao {
    private static final Logger logger = LoggerFactory.getLogger(RecipeDaoImpl.class);

    /**
     * Mybatis SQL Session Dependency Injection.
     */
    @Autowired
    private SqlSession sqlSession;


    @Override
    public List<Recipe> selectRecipeList(Recipe recipe) {
        return sqlSession.selectList("Recipe.selectRecipeList", recipe);
    }

    @Override
    public Recipe selectRecipeDetail(Recipe recipe) {
        return sqlSession.selectOne("Recipe.selectRecipeDetail", recipe);
    }

    @Override
    public Integer insertRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.insertRecipe", recipe);
    }

    @Override
    public Integer updateRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.updateRecipe", recipe);
    }

    @Override
    public Integer deleteRecipe(Recipe recipe) {
        return sqlSession.update("Recipe.deleteRecipe", recipe);
    }
}
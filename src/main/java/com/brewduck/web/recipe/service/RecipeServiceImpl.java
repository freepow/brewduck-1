package com.brewduck.web.recipe.service;

import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.dao.RecipeDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("recipeService")
public class RecipeServiceImpl implements RecipeService {
    private static final Logger logger = LoggerFactory.getLogger(RecipeServiceImpl.class);

    /**
     * RecipeDao Dependency Injection.
     */
    @Autowired
    private RecipeDao recipeDao;


    @Override
    public List<Recipe> selectRecipeList(Recipe recipe) {
        return recipeDao.selectRecipeList(recipe);
    }

    @Override
    public Recipe selectRecipeDetail(Recipe recipe) {
        return recipeDao.selectRecipeDetail(recipe);
    }

    @Override
    public Boolean insertRecipe(Recipe recipe) {
        int insertCount = recipeDao.insertRecipe(recipe);

        return (insertCount == 1);
    }

    @Override
    public Boolean updateRecipe(Recipe recipe) {
        int updateCount = recipeDao.updateRecipe(recipe);

        return (updateCount == 1);
    }

    @Override
    public Boolean deleteRecipe(Recipe recipe) {
        int deleteCount = recipeDao.deleteRecipe(recipe);

        return (deleteCount == 1);
    }
}

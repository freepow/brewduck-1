package com.brewduck.web.recipe.service;

import com.brewduck.framework.security.AuthenticationUtils;
import com.brewduck.web.domain.Account;
import com.brewduck.web.domain.Recipe;
import com.brewduck.web.domain.Style;
import com.brewduck.web.fermentable.dao.FermentableDao;
import com.brewduck.web.hop.dao.HopDao;
import com.brewduck.web.recipe.dao.RecipeDao;
import com.brewduck.web.style.dao.StyleDao;
import com.brewduck.web.yeast.dao.YeastDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("recipeService")
public class RecipeServiceImpl implements RecipeService {
    private static final Logger logger = LoggerFactory.getLogger(RecipeServiceImpl.class);

    @Autowired
    private RecipeDao recipeDao;

    @Autowired
    private StyleDao styleDao;

    @Autowired
    private FermentableDao fermentableDao;

    @Autowired
    private HopDao hopDao;

    @Autowired
    private YeastDao yeastDao;


    @Override
    public List<Recipe> selectRecipeList(Recipe recipe) {
        return recipeDao.selectRecipeList(recipe);
    }

    @Override
    public Recipe selectRecipeDetail(Recipe recipe) {
        Account account = AuthenticationUtils.getUser();

        // 레시피 조회
        Recipe newRecipe = recipeDao.selectRecipeDetail(recipe);

        // 레시피 제조시 입력한 스타일 맥주 이름
        Style paramStyle = new Style();
        paramStyle.setName(newRecipe.getStyleName());

        // 레시피 작성시 선택한 스타일 맥주
        newRecipe.setStyle(styleDao.selectStyleDetail(paramStyle));
        // 레시피에 포함되는 맥아 리스트
        newRecipe.setFermentables(fermentableDao.selectRecipeFermentableList(newRecipe.getName()));
        // 레시피에 포함되는 홉 리스트
        newRecipe.setHops(hopDao.selectRecipeHopList(newRecipe.getName()));
        // 레시피에 포함되는 이스트 리스트
        newRecipe.setYeasts(yeastDao.selectRecipeYeastList(newRecipe.getName()));

        // 조회수 업데이트
        newRecipe.setUpdateId(Integer.toString(account.getId()));
        recipeDao.updateRecipe(newRecipe);

        return newRecipe;
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

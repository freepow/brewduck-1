package com.brewduck.web.recipe.controller;

import com.brewduck.web.domain.Recipe;
import com.brewduck.web.recipe.service.RecipeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <pre>
 * 맥주 레시피 Controller.
 * </pre>
 *
 * @author jaeger
 * @version 1.0, 2014.02.14
 */
@Controller
@RequestMapping(value = "/recipe")
public class RecipeController {
    private static final Logger LOGGER = LoggerFactory.getLogger(RecipeController.class);

    @Autowired
    private RecipeService recipeService;


    /**
     * <pre>
     * 맥주 레시피 목록 조회.
     * </pre>
     *
     * @param model Model
     * @return 맥주 레시피 목록
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public List<Recipe> selectRecipeList(Model model) {
        LOGGER.info("Recipe List");
        Recipe recipe = new Recipe();

        // 맥주 레시피 목록 조회
        List<Recipe> list = recipeService.selectRecipeList(recipe);
        LOGGER.info("Recipe List Size : {}", list.size());

        return list;
    }

    /**
     * <pre>
     * 맥주 레시피 상세 조회.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
     * @return 맥주 레시피 상세.
     */
    @RequestMapping(value = "/detail/{name}", method = RequestMethod.GET)
    public String selectRecipeDetail(Model model, @PathVariable("name") String name) {
        LOGGER.info("Recipe Name : {}", name);

        Recipe recipe = new Recipe();
        recipe.setName(name);

        // 맥주 레시피 상세 조회
        Recipe recipeDetail = recipeService.selectRecipeDetail(recipe);

        model.addAttribute("recipeDetail", recipeDetail);

        return "recipe/detail";
    }

    /**
     * <pre>
     * 맥주 레시피 저장.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 저장 여부
     */
    @ResponseBody
    @RequestMapping(value = "/insert/{name}", method = RequestMethod.POST)
    public Recipe insertRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Insert Recipe : {}", paramRecipe);

        // 맥주 레시피 저장
        Boolean insertFlag = recipeService.insertRecipe(paramRecipe);

        // 맥주 레시피 저장했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setInsertFlag(insertFlag);

        return returnRecipe;
    }
    /**
     * <pre>
     * 맥주 레시피 수정.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 수정 여부
     */
    @ResponseBody
    @RequestMapping(value = "/update/{name}", method = RequestMethod.POST)
    public Recipe updateRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Update Recipe : {}", paramRecipe);

        // 맥주 레시피 수정
        Boolean updateFlag = recipeService.updateRecipe(paramRecipe);

        // 맥주 레시피 수정했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setUpdateFlag(updateFlag);

        return returnRecipe;
    }

    /**
     * <pre>
     * 맥주 레시피 삭제.
     * </pre>
     *
     * @param model Model
     * @param name 맥주 레시피 영문명
     * @param paramRecipe 맥주 레시피 VO
     * @return 맥주 레시피 삭제 여부
     */
    @ResponseBody
    @RequestMapping(value = "/delete/{name}", method = RequestMethod.POST)
    public Recipe deleteRecipe(Model model, @PathVariable("name") String name, @RequestBody Recipe paramRecipe) {
        LOGGER.info("Delete Recipe : {}", paramRecipe);

        // 맥주 레시피 삭제
        Boolean deleteFlag = recipeService.deleteRecipe(paramRecipe);

        // 맥주 레시피 삭제했는지 성공 세팅
        Recipe returnRecipe = new Recipe();
        returnRecipe.setName(name);
        returnRecipe.setDeleteFlag(deleteFlag);

        return returnRecipe;
    }
}


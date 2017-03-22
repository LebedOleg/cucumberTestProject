package cucumberTestProject.steps.serenity;

import cucumberTestProject.ILocators;
import cucumberTestProject.pages.*;
import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.annotations.Step;
import org.junit.Assert;

import java.util.ArrayList;
import java.util.Map;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.equalToIgnoringWhiteSpace;
import static org.hamcrest.Matchers.hasItem;


public class EndUserSteps {

    WelcomePage welcomePage;
    ProductsPage productsPage;
    SpecialOffersPage specialOffersPage;
    BlogsPage blogsPage;
    ContactUsPage contactUsPage;
    SignInPage signInPage;
    CreateNewAccountPage createNewAccountPage;


    @Step
    public void pageShouldHaveTheTitle(String arg0) {

        Assert.assertEquals("Incorrect title", welcomePage.getCurrentTitle(), arg0);
    }


    public void go_to_start_page() {
        welcomePage.open();
    }


    @Step
    public void click_menu_link(String arg0) {
        welcomePage.clickOnMenuLink(arg0);
    }


    @Step
    public void imageCarouselTitleIsPresent() {
        Assert.assertTrue("False", welcomePage.imageCarouselTitleIsPresent());

    }


    @Step
    public void pageShouldHaveTheBreadcrumb(String arg0) {
        Assert.assertTrue("Bread Crumb is not displayed", welcomePage.breadCrumbIsPresent(arg0));
    }


    @Step
    public void pageShouldHaveTheHeader() {
        Assert.assertTrue("Header is not displayed", welcomePage.headerIsPresent());
    }

    @Step
    public void click_on_language_dropdown() {
        welcomePage.clickOnLanguageDropdown();
    }

    @Step
    public void language_dropdown_menu_items(String arg0) {
        Assert.assertTrue("False", welcomePage.languageDropDownItemIsPresent(arg0));
    }

    @Step
    public void select_language_dropdown_item(String arg0) {
        welcomePage.selectLanguageDropdownItem(arg0);
    }

    @Step
    public void check_translation_link(String arg0, String arg1) {

        Assert.assertEquals(arg0, welcomePage.check_translation_link(arg1));
    }




    @Step
    public void click_on_sign_in_link() {
        welcomePage.clickOnSignInLink();
    }


    @Step
    public void move_mouse_cursor_on_item(String arg0) {
        welcomePage.moveMouseCursorOnItem(arg0);
    }

    @Step
    public void check_title_description_more(String arg0) {
        Assert.assertTrue("Item doesn't have required element", welcomePage.titleOfItemIsPresent(arg0));
        Assert.assertTrue("Item doesn't have required element", welcomePage.descriptionOfItemIsPresent(arg0));
        Assert.assertTrue("Item doesn't have required element", welcomePage.moreLinkOfItemIsPresent(arg0));
    }

    @Step
    public void click() {
        welcomePage.clickClick();
    }

    @Step
    public void enter_random_value(String arg0) {
        welcomePage.enterRandomValue(arg0);
    }

    @Step
    public void getListOfLanguages() {
        welcomePage.getListOfLanguages();
    }

    @Step
    public void checkCorrectOrderOfTheLanguages(Map<Integer, String> arg0) {
        Assert.assertTrue("Languages are in not correct order.", welcomePage.checkCorrectOrderOfTheLanguages(arg0));
    }

    @Step
    public void moveMouse() {
        welcomePage.abcd();
    }

    public void moveMouseCursorOn(String arg0) {
        welcomePage.moveMouseCursorOn(arg0);
    }

    public void checkThatItemHave(String arg0) {

        Assert.assertTrue("Item don't have title", welcomePage.checkThatItemHave(arg0));
    }

    @Step
    public void clickOnTitleOfInNewsFeed(String arg0) {
        welcomePage.clickOnTitleOfInNewsFeed(arg0);
    }

    @Step
    public void theUserShouldBeRelocatedToPageThatContainsImageAndReadMoreLink() {
        Assert.assertTrue("Blog description doesn't contain required element", blogsPage.theUserShouldBeRelocatedToPageThatContainsImage());
        Assert.assertTrue("Blog description doesn't contain required element", blogsPage.theUserShouldBeRelocatedToPageThatContainsReadMoreLink());
    }


    ////////////////////////////////////////////            ////////////////////////////////////////
    @Step
    public void pageWithItemDescriptionShouldHaveTitleImageDescription() {
        itemShouldHaveTitle();
        itemShouldHaveImage();
        itemShouldHaveDescription();
    }

    @Step
    private void itemShouldHaveTitle() {
        Assert.assertTrue("", productsPage.itemShouldHaveTitle());
    }

    @Step
    private void itemShouldHaveImage() {
        Assert.assertTrue("", productsPage.itemShouldHaveImage());
    }

    @Step
    private void itemShouldHaveDescription() {
        Assert.assertTrue("", productsPage.itemShouldHaveDescription());
    }


    ///////////////////////////////////////////               ???????????????????????????????????/
    @Step
    public void afterClickOnOfPageWithDescriptionShouldHaveTitle(String arg0) {
        productsPage.theUserClickOnTitleOfProduct(arg0);
        pageWithItemDescriptionShouldHaveTitleImageDescription();
        productsPage.goBack();

    }

    @Step
    public void afterClickOnOfPageWithDescriptionShouldHaveImage(String arg0) {
        productsPage.theUserClickOnImageOfProduct(arg0);
        pageWithItemDescriptionShouldHaveTitleImageDescription();
        productsPage.goBack();

    }

    @Step
    public void afterClickOnOfPageWithDescriptionShouldHaveDescription(String arg0) {
        productsPage.theUserClickOnReadMoreOfProduct(arg0);
        pageWithItemDescriptionShouldHaveTitleImageDescription();
        productsPage.goBack();

    }

    ///////////////////////////////////////////////////////////////////////////////////////////////////
    @Step
    public void theUserOpenProductThatHaveThreeImages(String arg0, String arg1) {
        productsPage.clickOnCategory(arg1);
        productsPage.theUserClickOnTitleOfProduct(arg0);
    }

    public void theUserClickOnMainImageInProductDescriptionPage() {
        productsPage.theUserClickOnMainImageInProductDescriptionPage();
    }

    public void closeButtonAndRightArrowShouldBeAtImageGallery() {
        Assert.assertTrue("", productsPage.closeButtonIsPresent());
        Assert.assertTrue("", productsPage.rightArrowIsPresent());
    }

    @Step
    public void imageGalleryShouldBeCloseAfterClickOnCloseButton() {
        productsPage.clickOnCloseButtonOfImageGallery();
        itemShouldHaveTitle();
        itemShouldHaveImage();
        itemShouldHaveDescription();
    }

    //////////////////////////////////////////////////////////////////////////
    @Step
    public void theUserClickOnPagesDropdownMenu() {
        productsPage.theUserClickOnPagesDropdownMenu();
    }

    @Step
    public void theUserSelectItemInPagesDropdownMenu(String arg0) {
        productsPage.theUserSelectItemInPagesDropdownMenu(arg0);
    }

    @Step
    public void labelThatShowingNumberOfResultsShouldChangeTo(String arg0) {
        Assert.assertEquals(arg0, productsPage.getCurrentShowingResultsLabel());
    }

    @Step
    public void productListShouldContainItems(int arg0) {
        Assert.assertEquals(arg0, productsPage.getCurrentNumberOfElements());
    }

    @Step
    public void theUserClickOnItemsPerPageDropdownMenu() {
        productsPage.theUserClickOnItemsPerPageDropdownMenu();
    }

    public void theUserSelectItemInItemsPerPageDropdownMenu(String arg0) {
        productsPage.theUserSelectItemInItemsPerPageDropdownMenu(arg0);
    }

    @Step
    public void theUserClickOnSearchButton() {
        productsPage.theUserClickOnSearchButton();
    }

    @Step
    public void searchPageShouldHaveSearchField() {
        Assert.assertTrue("", productsPage.searchPageShouldHaveSearchField());
    }

    @Step
    public void searchPageShouldHaveScopeDropdownMenu() {
        Assert.assertTrue("", productsPage.searchPageShouldHaveScopeDropdownMenu());
    }

    @Step
    public void searchPageShouldHaveSearchButton() {
        Assert.assertTrue("", productsPage.searchPageShouldHaveSearchButton());
    }


    @Step
    public void pageShouldContainPartInURL(String arg0) {
        productsPage.switchWindow(1);
        //   Assert.assertTrue( productsPage.getCurrentUrl().contains(arg0));
        Assert.assertThat("", productsPage.getCurrentUrl(), containsString(arg0));
        productsPage.switchWindow(0);
    }

    @Step
    public void theUserClickOnIconInProduct(String arg0, String arg1) {
        productsPage.theUserClickOnIconInProduct(arg0, arg1);
    }

    @Step
    public void theUserClickOnPaginationButton(String arg0) {
        productsPage.theUserClickOnPaginationButton(arg0);
    }

    @Step

    public void theUserIsOnSpecialOffersPage() {
        specialOffersPage.open();
    }

    @Step

    public void theUserIsOnProductsPage() {
        productsPage.open();
    }

    @Step
    public void theUserClickOnViewIcon(String arg0) {
        productsPage.theUserClickOnViewIcon(arg0);
    }

    @Step
    public void productsListShouldChangeItSViewOnGrid() {
        Assert.assertFalse("", productsPage.titleOfProducIsVisible());
    }

    @Step
    public void productsListShouldChangeItSViewOnList() {
        Assert.assertTrue("", productsPage.titleOfProducIsVisible());
    }

    ///////////////////////////////?//////////////////TODO: SPECIAL OFFERS PAGE ////////////////////////////////////////

    @Step
    public void theUserClickOnViewIconOnSpecialOffersPage(String arg0) {
        specialOffersPage.theUserClickOnViewIconOnSpecialOffersPage(arg0);
    }

    @Step
    public void productsListOnSpecialOffersPageShouldChangeItSViewOnGrid() {
        Assert.assertFalse(specialOffersPage.titleOfProductIsVisible());
    }

    @Step
    public void productsListOnSpecialOffersPageShouldChangeItSViewOnList() {
        Assert.assertTrue(specialOffersPage.titleOfProductIsVisible());
    }

    @Step
    public void theUserClickOnTitleOfThe(String arg0) {
        specialOffersPage.theUserClickOnTitleOfThe(arg0);
    }

    @Step
    public void productShouldHaveTitleDescriptionAndImage() {
        productShouldHaveTheTitle();
        productShouldHaveTheImage();
        productShouldHaveTheDescription();
        specialOffersPage.goBack();
    }

    @Step
    public void productShouldHaveTheTitle() {
        Assert.assertTrue(specialOffersPage.productShouldHaveTheTitle());
    }

    @Step
    public void productShouldHaveTheImage() {
        Assert.assertTrue(specialOffersPage.productShouldHaveTheImage());
    }

    @Step
    public void productShouldHaveTheDescription() {
        Assert.assertTrue(specialOffersPage.productShouldHaveTheDescription());
    }

    @Step
    public void theUserClickOnReadMoreLinkOfThe(String arg0) {
        blogsPage.theUserClickOnTitleOfTheBlogEntry(arg0);
    }

    @Step
    public void theUserClickOnImageOfThe(String arg0) {
        specialOffersPage.theUserClickOnImageOfThe(arg0);
    }

    @Step
    public void theUserClickOnTitleOfTheBlogEntry(String arg0) {
        blogsPage.theUserClickOnTitleOfTheBlogEntry(arg0);
    }

    @Step
    public void entryShouldContainAllRequiredElements() {
        entryShouldContainImage();
        entryShouldContainReadMore();
        entryShouldContainOriginalPost();
        entryShouldContainTweetLink();
//        entryShouldContainFacebookLink();
        specialOffersPage.goBack();
    }

    @Step
    public void entryShouldContainImage() {
        Assert.assertTrue(blogsPage.entryShouldContainImage());
    }

    @Step
    public void entryShouldContainReadMore() {
        Assert.assertTrue(blogsPage.entryShouldContainReadMore());
    }

    @Step
    public void entryShouldContainOriginalPost() {
        Assert.assertTrue(blogsPage.entryShouldContainOriginalPost());
    }

    @Step
    public void entryShouldContainTweetLink() {
        Assert.assertTrue(blogsPage.entryShouldContainTweetLink());
    }

    @Step
    public void entryShouldContainFacebookLink() {
        // Assert.assertTrue(blogsPage.entryShouldContainFacebookLink());
        blogsPage.entryShouldContainFacebookLink();
    }

    @Step
    public void theUserClickOnREADLinkOfTheBlogEntry(String arg0) {
        blogsPage.theUserClickOnREADLinkOfTheBlogEntry(arg0);
    }

    @Step
    public void theUserClickOnImageOfTheBlogEntry(String arg0) {
        blogsPage.theUserClickOnImageOfTheBlogEntry(arg0);
    }

    @Step
    public void theUserClickOnCommentsLinkOfTheBlogEntry(String arg0) {
        blogsPage.theUserClickOnCommentsLinkOfTheBlogEntry(arg0);
    }

    public void theUserIsOnBlogsPage() {
        blogsPage.open();
    }


    @Step
    public void theUserClickOnViewOriginalPostLink() {
        blogsPage.theUserClickOnViewOriginalPostLink();
    }

    @Step
    public void websiteContainsTitleOfPostThatWasChosen() {
        blogsPage.saveBlogText();
        productsPage.switchWindow(1);
        Assert.assertTrue(blogsPage.websiteContainsTitleOfPostThatWasChosen());
        productsPage.switchWindow(0);

    }

    @Step
    public void theUserEnterValueInSearchField() {
        blogsPage.theUserEnterValueInSearchField();
    }

    public void theUserPressEnterButton() {
        blogsPage.theUserPressEnterButton();
    }

    @Step
    public void searchPageShouldBeOpened() {
        Assert.assertTrue(productsPage.searchPageShouldHaveScopeDropdownMenu());
        Assert.assertTrue(productsPage.searchPageShouldHaveSearchButton());
        Assert.assertTrue(productsPage.searchPageShouldHaveSearchField());
    }

    @Step
    public void theUserClickOnReadMoreLink() {
        blogsPage.saveBlogText();
        blogsPage.theUserClickOnReadMoreLink();
    }

    @Step
    public void websiteIsOpenedAndContainsTitleOfPostThatWasChosen() {
        //blogsPage.saveBlogText();
        Assert.assertTrue(blogsPage.websiteIsOpenedAndContainsTitleOfPostThatWasChosen());
        productsPage.goBack();
    }

    @Step
    public void theUserClickOnPreviousLink() {
        blogsPage.theUserClickOnPreviousLink();
    }

    @Step
    public void entryShouldChangeToPrevious() {
        Assert.assertFalse(blogsPage.headerNotEqual());
    }

    @Step
    public void theUserClickOnNextLink() {
        blogsPage.theUserClickOnNextLink();
    }

    @Step
    public void userIsOnContactUsPage() {
        contactUsPage.open();

    }

    @Step
    public void theUserClickOnSENDButton() {
        contactUsPage.theUserClickOnSENDButton();
    }

    @Step
    public void errorMessageAppearsAboveTextbox(String arg0) {
        Assert.assertTrue(contactUsPage.errorMessageAppearsAboveTextbox(arg0));
    }

    @Step
    public void errorMessageAppearsAboveEntryArea(String arg0) {
        Assert.assertTrue(contactUsPage.errorMessageAppearsAboveEntryArea(arg0));
    }

    @Step
    public void enterInTextbox(String arg0, String arg1) {
        contactUsPage.enterInTextbox(arg0, arg1);
    }

    @Step
    public void errorMessageAboveShouldDisappear(String arg0) {
        Assert.assertFalse(contactUsPage.errorMessageAboveShouldDisappear(arg0));
    }

    @Step
    public void errorMessageAboveAntryAreaShouldDisappear(String arg0) {
        Assert.assertFalse(contactUsPage.errorMessageAboveAntryAreaShouldDisappear(arg0));
    }

    @Step
    public void enterInEntryArea(String arg0, String arg1) {
        contactUsPage.enterInEntryArea(arg0, arg1);
    }

    @Step
    public void theUserClickOn(String arg0) {
        signInPage.theUserClickOn(arg0);
    }

    @Step
    public void userIsOnSignInPage() {
        signInPage.open();
    }

    @Step
    public void theUserClickOnSIGNINLinkOnSIGNINPage() {
        signInPage.theUserClickOnSIGNINLinkOnSIGNINPage();
    }

    @Step
    public void errorMessageShouldAppearAboveTextbox(String arg0) {
        Assert.assertTrue(signInPage.errorMessageShouldAppearAboveTextbox(arg0));
    }

    @Step
    public void enterInTextboxOnSIGNINPage(String arg0, String arg1) {
        signInPage.enterInTextboxOnSIGNINPage(arg0, arg1);
    }

    @Step
    public void errorMessageAboveTheTextboxShouldDisappear(String arg0) {
        Assert.assertFalse(signInPage.errorMessageAboveTheTextboxShouldDisappear(arg0));
    }

    @Step
    public void requestFailedToCompleteErrorMessageShouldAppear() {
        Assert.assertTrue(signInPage.requestFailedToCompleteErrorMessageShouldAppear());
    }

    @Step
    public void pleaseTryAgainErrorMessageShouldAppear() {
        Assert.assertTrue(signInPage.pleaseTryAgainErrorMessageShouldAppear());
    }

    @Step
    public void theUserClickOnCreateAccountLink() {
        signInPage.theUserClickOnCreateAccountLink();
    }

    @Step
    public void createAccountPageShouldBeOpen() {
        Assert.assertTrue(signInPage.createAccountPageShouldBeOpen());
    }

    @Step
    public void theUserIsOnCreateAccountPage() {
        createNewAccountPage.open();
    }

    @Step
    public void theUserClickOnSAVEButton() {
        createNewAccountPage.theUserClickOnSAVEButton();
    }

    @Step
    public void errorMessageShouldAppearAtTheRightOfTextbox(String arg0) {
        Assert.assertTrue(createNewAccountPage.errorMessageShouldAppearAtTheRightOfTextbox(arg0));
    }

    public void theUserClickOnDatePicker() {
        createNewAccountPage.theUserClickOnDatePicker();
    }

    @Step
    public void theUserClickOnArrowLink(String arg0) {
        createNewAccountPage.theUserClickOnArrowLink(arg0);
    }

    public void dateShouldChangeTo(String arg0) {
        Assert.assertThat(createNewAccountPage.dateShouldChangeTo(), equalToIgnoringWhiteSpace(arg0));
    }

    public void theUserClickOnCalendarDay(String arg0) {
        createNewAccountPage.theUserClickOnCalendarDay(arg0);
    }

    @Step
    public void dateInTextboxShouldChangeTo(String arg0) {
        Assert.assertTrue(createNewAccountPage.dateInTextboxShouldChangeTo(arg0));
    }

    @Step
    public void theUserClickOnSiteLogotype() {
        welcomePage.theUserClickOnSiteLogotype();
    }


    @Step
    public void pageShouldHaveURL(String arg0) {
        Assert.assertEquals(productsPage.getCurrentUrl(), arg0);
    }

    @Step
    public void pageHaveRightHeader() {
        Assert.assertTrue(welcomePage.pageHaveRightHeader());
    }

    @Step
    public void pageHaveTextbox(String arg0) {
        Assert.assertTrue(welcomePage.pageHaveTextbox(arg0));
    }

    @Step
    public void theUserClickOnGOOGLEPLAYLink() {
        welcomePage.theUserClickOnGOOGLEPLAYLink();
    }
    @Step
    public void pageShouldHaveTitle(String arg0) {
        Assert.assertEquals(welcomePage.pageShouldHaveTitle(), arg0);
    }

    public void pageShouldHaveInstallButton() {
        Assert.assertTrue(welcomePage.pageShouldHaveInstallButton());
    }

    @Step
    public void theUserClickOnTitleOf(String arg0) {
        welcomePage.theUserClickOnTitleOf(arg0);
    }

    @Step
    public void theUserClickOnMORELinkOf(String arg0) {
        welcomePage.theUserClickOnMORELinkOf(arg0);
    }
@Step
    public void theUserClickOnOfCategoryImageCarousel(String arg0) {
        welcomePage.theUserClickOnOfCategoryImageCarousel(arg0);
    }

    @Step
    public void urlShouldContainPart(String arg0) {
        Assert.assertThat(welcomePage.getURLCurrent(), containsString(arg0));
    }
}





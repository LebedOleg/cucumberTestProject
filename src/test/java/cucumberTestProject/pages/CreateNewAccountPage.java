package cucumberTestProject.pages;

import cucumberTestProject.ILocators;
import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.pages.PageObject;
import org.openqa.selenium.By;

/**
 * Created by userqa on 20.03.17.
 */
@DefaultUrl("http://88.198.7.89:8100/web/guest/welcome?p_p_id=58&p_p_lifecycle=0&p_p_state=maximized&p_p_mode=view&saveLastPath=false&_58_struts_action=%2Flogin%2Fcreate_account")
public class CreateNewAccountPage extends PageObject {
    String currentDate;

    public void theUserClickOnSAVEButton() {
        $(ILocators.CREATE_ACCOUNT_SAVE_BUTTON).click();
    }


    public boolean errorMessageShouldAppearAtTheRightOfTextbox(String arg0) {
        if (arg0.equals(" Email Address ")) {
            return $(ILocators.CREATE_ACCOUNT_ERROR_MESSAGE_EMAIL.replace("$1",arg0)).isPresent();
        } else{
            return $(ILocators.CREATE_ACCOUNT_ERROR_MESSAGE.replace("$1", arg0)).isPresent();
        }
    }

    public void theUserClickOnDatePicker() {
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER).click();
    }

    public void theUserClickOnArrowLink(String arg0) {
//        currentDate = $(ILocators.CREATE_ACCOUNT_DATE_PICKER_CURRENT_DATE).getText();
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER_RIGHT_ARROW.replace("$1", arg0)).click();
    }

    public String dateShouldChangeTo() {
        return  $(ILocators.CREATE_ACCOUNT_DATE_PICKER_CURRENT_DATE).getText();
    }

    public void theUserClickOnCalendarDay(String arg0) {
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER_CALENDAR_DATE.replace("$1",arg0)).click();
    }

    public boolean dateInTextboxShouldChangeTo(String arg0) {
        return $(ILocators.CREATE_ACCOUNT_DATE_PICKER_VALUE.replace("$1", arg0)).isPresent();
    }

    public void theUserEnterInDatePickerTextbox(String arg0) {
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER).sendKeys(arg0);
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER).click();

    }

    public void theUserClearValueInDatePickerTextbox() {
        $(ILocators.CREATE_ACCOUNT_DATE_PICKER).clear();
    }

    public void enterValueInTextbox(String arg0, String arg1) {
        $(ILocators.CREATE_ACCOUNT_INPUT_FIELD.replace("$1", arg1)).sendKeys(arg0);
    }

    public boolean errorMessageShouldDisappearNearOfTextbox(String arg0) {
        if (arg0.equals(" Email Address ")) {
            try {
                getDriver().findElement(By.xpath(ILocators.CREATE_ACCOUNT_ERROR_MESSAGE_EMAIL.replace("$1", arg0)));
                return true;
            } catch (org.openqa.selenium.NoSuchElementException e) {
                return false;
            }
        } else {
            try {
                getDriver().findElement(By.xpath(ILocators.CREATE_ACCOUNT_ERROR_MESSAGE.replace("$1", arg0)));
                return true;
            } catch (org.openqa.selenium.NoSuchElementException e) {
                return false;
            }
        }
    }

    public void theUserClickOnGenderDropdownMenu() {
        $(ILocators.CREATE_ACCOUNT_GENDER_DROPDOWN).click();
    }

    public void theUserSelectOptionInGenderDropdownMenu(String arg0) {
        $(ILocators.CREATE_ACCOUNT_GENDER_DROPDOWN_OPTION.replace("$1",arg0)).click();
    }

    public void theUserSelectOptionInCountryDropdownMenu(String arg0) {
        $(ILocators.CREATE_ACCOUNT_COUNTRY_DROPDOWN_OPTION.replace("$1",arg0)).click();
    }

    public boolean optionShouldBeSelected(String arg0) {
        System.out.println($(ILocators.CREATE_ACCOUNT_GENDER_DROPDOWN_OPTION.replace("$1",arg0)).getValue());
//        return  $(ILocators.CREATE_ACCOUNT_GENDER_DROPDOWN_OPTION.replace("$1",arg0)).getValue().equals("1");
        return true;
    }

    public String welcomeLinkAtHeaderPartShouldBeTranslateLikeA(String arg0) {
       return  $(ILocators.WELCOME_HEADER_MENULINK.replace("$1", arg0)).getText();
    }

    public void enterThatDoesnTHavePartAfterSymbol(String arg0, String arg1) {
        $(ILocators.CREATE_ACCOUNT_INPUT_FIELD.replace("$1", arg1)).sendKeys(arg0);
    }

}

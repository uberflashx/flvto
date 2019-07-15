Feature: Making sure that the content is presented on page
@cnt
  Scenario: Verifying presence of elements on page
    Given I open a browser.
    When I navigate to www.flvto.biz
    Then I see 'Terms of Use' link
    And I see 'How to' link
    And I see 'Privacy Policy' link
    And I see 'DMCA' link
    And I see 'Feedback' link
    And I see 'Download' button

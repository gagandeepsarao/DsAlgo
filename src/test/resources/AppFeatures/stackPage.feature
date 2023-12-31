
Feature: Stack feature

Background:

  Given  user is on the "stack" after logged in
  
   
   Scenario Outline: User navigates to different stack page and try codeeditor with valid and invalid code
   
   	When The user clicks "<pageName>" link from main stack page
   	Then check the title of the page "<pageName>"
   	
   	When user clicks try here button
		Then user should be redirected to a page having an tryEditor with a Run button to test
		
		
		When The user enter valid python code in tryEditor from sheetname "<Sheetname1>" and rownumber <RowNumber>
		And  The user clicks on run button
    Then The user should be presented with Run result
    
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname2>" and rownumber <RowNumber>
    And  The user clicks on run button
    Then The user should get error message for invalid code
		Examples:
  		| pageName            | Sheetname1  | RowNumber |Sheetname2 |
  		| Operations in Stack | pythonCode | 0 |codeInvalid|
 			| Implementation      | pythonCode | 0 |codeInvalid|
  		| Applications        | pythonCode | 0 |codeInvalid|
  

		
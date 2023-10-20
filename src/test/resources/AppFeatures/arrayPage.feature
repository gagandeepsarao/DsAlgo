Feature: Array Page Navigation through link feature

Validating Array module. 
 

    Scenario: User navigated to Arrays in Python page
    Given user is logged in to DS Algo portal
    Given user is on the "array" after logged in
    When The user clicks "Arrays in Python" on Array Page
    Then The user should be redirected to "Arrays in Python" page of Array
    
    Scenario: User navigated to tryEditor page with Run button from Array page
   	Given The user is on the "Arrays in Python" of Array Page 
   	When user clicks try here button
  	Then user should be redirected to a page having an tryEditor with a Run button to test
  	
  	Scenario Outline: The user run the code in tryEditor with valid input for Arrays in Python page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with Run result
    
    Examples:
           | Sheetname  | RowNumber |
           | pythonCode |         0 |
           
   Scenario Outline: The user run the code in tryEditor with inValid input for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with error message
    
    Examples:
           | Sheetname  | RowNumber |
           | codeInvalid|         0 |
   
   Scenario: user is directed to Arrays Using List page
    Given user is on the "Array" after logged in
    When The user clicks "Arrays Using List" on Array Page
    Then The user should be redirected to "Arrays Using List" page of Array 
    
    Scenario: User navigated to tryEditor page with Run button from Array page
   	Given The user is on the "Arrays Using List" of Array Page  
   	When user clicks try here button
  	Then user should be redirected to a page having an tryEditor with a Run button to test
  	
  	Scenario Outline: The user run the code in tryEditor with valid input for Arrays Using List page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with Run result
    
    Examples:
           | Sheetname  | RowNumber |
           | pythonCode |         0 |
           
    Scenario Outline: The user run the code in tryEditor with inValid input for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with error message
    
    Examples:
           | Sheetname  | RowNumber |
           | codeInvalid|         0 |
           
     Scenario: user is directed to Basic Operations in Lists page
    Given user is on the "Array" after logged in
    When The user clicks "Basic Operations in Lists" on Array Page
    Then The user should be redirected to "Basic Operations in Lists" page of Array 
    
    Scenario: User navigated to tryEditor page with Run button from Array page
   	Given The user is on the "Basic Operations in Lists" of Array Page 
   	When user clicks try here button
  	Then user should be redirected to a page having an tryEditor with a Run button to test
  	
  	Scenario Outline: The user run the code in tryEditor with inValid input for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with error message
    
    Examples:
           | Sheetname  | RowNumber |
           | codeInvalid|         0 |
           
    Scenario Outline: The user run the code in tryEditor with inValid input for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with error message
    
    Examples:
           | Sheetname  | RowNumber |
           | codeInvalid|         0 |       
           
     Scenario: user is directed to Applications of Array page
    Given user is on the "Array" after logged in
    When The user clicks "Applications of Array" on Array Page
    Then The user should be redirected to "Applications of Array" page of Array 
    
    Scenario: User navigated to tryEditor page with Run button from Array page
   	Given The user is on the "Applications of Array" of Array Page 
   	When user clicks try here button
  	Then user should be redirected to a page having an tryEditor with a Run button to test
  	
  	Scenario Outline: The user run the code in tryEditor with iVvalid input for Applications of Array page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter valid python code in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with Run result
    
    Examples:
           | Sheetname  | RowNumber |
           | pythonCode |         0 |   
           
    Scenario Outline: The user run the code in tryEditor with inValid input for Basic Operations in Lists page
    Given The user is in a page having an tryEditor with a Run button to test
    When The user enter inValid pythonCode in tryEditor from sheetname "<Sheetname>" and rownumber <RowNumber>
    When The user clicks on run button
    Then The user should be presented with error message
    
    Examples:
           | Sheetname  | RowNumber |
           | codeInvalid|         0 |         
           
    Scenario: user is directed to Practice Questions Page       
    Given user is on the "Array" after logged in
    When The user clicks "Applications of Array" on Array Page
    Then The user clicks "Practice Questions" on Array Page
    Then The user should be redirected to "Practice Questions" page of Array  
    
     Scenario: User navigated to Practice Questions pages
   	Given user is on "Practice Questions" of Array Page 
   	When The user clicks "Search The Array" on Array Page
   	Then user navigates to practice question1 page with Run button to test
  	   	
  	
  	Scenario: The user run the code in tryEditor with valid input for Practice question page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print("color")|  
    And user clicks on run button to test
    Then The user should be presented with Run result
    
    Scenario: The user run the code in tryEditor with inValid input for Practice question page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print red |  
    And user clicks on run button to test
    Then The user should be presented with error message
    
    
     Scenario: User navigated to Practice Question2 page
   	Given user is on "Practice Questions" of Array Page 
   	When The user clicks "Max Consecutive Ones" on Array Page
   	Then user navigates to practice question2 page with Run button to test
  	   	
  	
  	Scenario: The user run the code in tryEditor with valid input for Practice question2 page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print("Hello")|  
    And user clicks on run button to test
    Then The user should be presented with Run result
    
    Scenario: The user run the code in tryEditor with invalid input for Practice question page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print hell |  
    And user clicks on run button to test
    Then The user should be presented with error message
    
   Scenario: User navigated to Practice Question3 pages
   	Given user is on "Practice Questions" of Array Page 
   	When The user clicks "Find Numbers with Even Numbers" on Array Page
   	Then user navigates to practice question3 page with Run button to test
  	   	
  	
  	Scenario: The user run the code in tryEditor with valid input for Practice question3 page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print("NO")|  
    And user clicks on run button to test
    Then The user should be presented with Run result
    
    Scenario: The user run the code in tryEditor with inValid input for Practice question3 page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print Nose |  
    And user clicks on run button to test
    Then The user should be presented with error message
    
      Scenario: User navigated to Practice Question4 pages
   	Given user is on "Practice Questions" of Array Page 
   	When The user clicks "Squares of a Sorted Array" on Array Page
   	Then user navigates to practice question4 page with Run button to test
  	   	
  	
  	Scenario: The user run the code in tryEditor with valid input for Practice question4 page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print("YES")|  
    And user clicks on run button to test
    Then The user should be presented with Run result
    
    Scenario: The user run the code in tryEditor with inValid input for Practice question4 page
    Given user is on question "Assessment" page with Run button to test
    When user enters following python code in tryEditor
      | print Bye|  
    And user clicks on run button to test
    Then The user should be presented with error message
    
    
    
    #Scenario Outline:  The user run the code in tryEditor with valid input for Practice question page
   #	Given user is on the "Practice Questions" of Array page 
   #	When The user clicks "<Qpage>" on Array Page
    #Given user is on the practice question1 page with Run button to test
    #When user enters following python code in tryEditor
      #| print("color")|  
    #And user clicks on run button to test
    #Then The user should be presented with Run result
    #Examples:
    #|Qpage|
    #|Search The Array|
    #|Max Consecutive Ones|
    #|Find Numbers with Even Numbers|
    #|Squares of a Sorted Array|
    
    
    #	Scenario Outline: The user run the code in tryEditor with valid input for Practice question page
    #Given user is on the practice question1 page with Run button to test
    #When user enters python "<code>" in tryEditor
        #And user clicks on run button to test
    #Then The user should be presented with Run result
    #Examples:
     #|code|
      #| print("Thank you")| 
       #| print("hello")| 
                         
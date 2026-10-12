*** Settings ***
Documentation     Example API tests for a public practice REST API.
Library           RequestsLibrary
Suite Setup       Create Session    demo_api    ${API_URL}

*** Variables ***
${API_URL}         https://jsonplaceholder.typicode.com

*** Test Cases ***
Get An Existing Post
    [Documentation]    A known post can be retrieved and has the expected fields.
    ${response}=    GET On Session    demo_api    /posts/1    expected_status=200
    ${post}=    Set Variable    ${response.json()}
    Should Be Equal As Integers    ${post}[id]        1
    Should Be Equal As Integers    ${post}[userId]    1
    Should Not Be Empty          ${post}[title]
    Should Not Be Empty          ${post}[body]

Get All Posts
    [Documentation]    The posts endpoint returns a non-empty JSON array.
    ${response}=    GET On Session    demo_api    /posts    expected_status=200
    ${posts}=    Set Variable    ${response.json()}
    Should Not Be Empty    ${posts}
    Length Should Be      ${posts}    100

Get An Existing User
    [Documentation]    A user can be retrieved and contains basic profile fields.
    ${response}=    GET On Session    demo_api    /users/1    expected_status=200
    ${user}=    Set Variable    ${response.json()}
    Should Be Equal As Integers    ${user}[id]    1
    Should Not Be Empty    ${user}[name]
    Should Contain         ${user}[email]    @

Unknown Post Returns Not Found
    [Documentation]    A non-existent post returns HTTP 404.
    ${response}=    GET On Session    demo_api    /posts/999999    expected_status=404
    Should Be Equal As Integers    ${response.status_code}    404

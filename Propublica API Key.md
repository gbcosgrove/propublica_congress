# Propublica API Key

## Member Endpoints

### List of Members

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/members.json`

|Parameter|Description|
|---------|-----------|
|congress|102-115 for House, 80-115 for Senate|
|chamber|house or senate|

----
### Get a Specific Member


`GET https://api.propublica.org/congress/v1/members/{member-id}.json`

|Parameter|Description|
|---------|-----------|
|member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|

-----
### Get New Members

`GET https://api.propublica.org/congress/v1/members/new.json`

**Senate Request**

`GET https://api.propublica.org/congress/v1/members/{chamber}/{state}/current.json`

**House Request**

`GET https://api.propublica.org/congress/v1/members/{chamber}/{state}/{district}/current.json`

**URL Parameters**

|Parameter|Description|
|---------|-----------|
|chamber|`house` or `senate`|
|state|Two-letter state abbreviation|
|district|House of Representatives district number (House requests only)|

------
### Get Members Leaving Office

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/members/leaving.json`

|Parameter|Description|
|---------|-----------|
|congress|111-115|
|chamber|`house` or `senate`|

----
### Get Specific Member's Vote Positions

`GET https://api.propublica.org/congress/v1/members/{member-id}/votes.json`

|Parameter|Description|
|---------|-----------|
|member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|

-----
### Compare Two Members Vote Positions

`GET https://api.propublica.org/congress/v1/members/{first-member-id}/votes/{second-member-id}/{congress}/{chamber}.json`

|Parameter|Description|
|---------|-----------|
|first-member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|second-member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|congress|102-115 for House, 101-115 for Senate|
|chamber|`house` or `senate`|

----
### Compare Two Members' Bill Sponsorships

`GET https://api.propublica.org/congress/v1/members/{first-member-id}/bills/{second-member-id}/{congress}/{chamber}.json`

|Parameter|Description|
|---------|-----------|
|first-member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|second-member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|congress|102-115 for House, 101-115 for Senate|
|chamber|`house` or `senate`|

----
### Get Bills Cosponsored by a Specific Member

`GET https://api.propublica.org/congress/v1/members/{member-id}/bills/{type}.json`

|Parameter|Description|
|---------|-----------|
|member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|type|`cosponsored` or `withdrawn`|

----
----
## Bills

### Search Bills

`GET https://api.propublica.org/congress/v1/bills/search.json?query={query}`

|Parameter|Description|
|---------|-----------|
|query|keyword or phrase|
|sort|`_score` or `date` (default is `date`)
|dir|`asc` or `desc` (default) is `desc`|

----

### Get Recent Bills

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/bills/{type}.json`

|Type|Sort Field|
|----|----------|
|introduced|	`introduced_date`|
|updated|	`latest_major_action_date`|
|active|	`latest_major_action_date`|
|passed|	`latest_major_action_date`|
|enacted|	`enacted`|
|vetoed|	`vetoed`|

|Parameter| Desciption||---|---||introduced|`introduced_date`||updated|`latest_major_action_date`||active|`latest_major_action_date`||passed|`latest_major_action_date`|

----

### Get Recent Bills by a Specific Member

`GET https://api.propublica.org/congress/v1/members/{member-id}/bills/{type}.json`

|Parameter|Description|
|---------|-----------|
|member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.|
|type| `introduced` or updated`|


----

### Get Recent Bills by a Specific Subject

`GET https://api.propublica.org/congress/v1/bills/subjects/{subject}.json`

|Parameter|Description|
|---------|-----------|
|subject|A slug version of a legislative subject, displayed as `url_name` in subject responses.|

----

### Get Upcoming Bills

`GET https://api.propublica.org/congress/v1/bills/upcoming/{chamber}.json`

|Parameter|Description|
|---------|-----------|
|chamber|`house` or `senate`|

----

### Get a Specific Bill

`GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}.json`

|Parameter|Description|
|---------|-----------|
|congress|105-115|
|bill-id|a bill slug, for example `hr4881` - these can be found in the recent bill response.|


----

### Get Amendments for a Specific Bill

`GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}/amendments.json`

|Parameter|Description|
|---------|-----------|
|congress|105-115|
|bill-id|a bill slug, for example `hr4881` - these can be found in the recent bill response.|


----

### Get Subjects for a Specific Bill

`GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}/subjects.json`

|Parameter|Description|
|---------|-----------|
|congress|105-115|
|bill-id|a bill slug, for example `hr4881` - these can be found in the recent bill response.|


----

### Get Related Bills for a Specific Bill

`GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}/related.json`

|Parameter|Description|
|---------|-----------|
|congress|105-115|
|bill-id|a bill slug, for example `hr4881` - these can be found in the recent bill response.|

----

### Get a Specific Bill Subject

`GET https://api.propublica.org/congress/v1/bills/subjects/search.json`

|Parameter|Description|
|---------|-----------|
|query|a word or phrase|

**Example Call**

`curl "https://api.propublica.org/congress/v1/bills/subjects/search.json?query=climate"
  -H "X-API-Key: PROPUBLICA_API_KEY"`

----

### Get Cosponsors for a Specific Bill

`GET https://api.propublica.org/congress/v1/{congress}/bills/{bill-id}/cosponsors.json`

|Parameter|Description|
|---------|-----------|
|congress|105-115|
|bill-id|a bill slug, for example `hr4881` - these can be found in the recent bill response.|


----
----

## Votes

### Get Recent Votes

`GET https://api.propublica.org/congress/v1/{chamber}/votes/recent.json`

|Parameter|Description|
|---------|-----------|
|chamber|`house`, `senate`, or `both`|

----

### Get a Specific Roll Call Vote

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/sessions/{session-number}/votes/{roll-call-number}.json`

|Parameter|Description|
|---------|-----------|
|congress|102-115 for House, 80-115 for Senate|
|chamber|`house` or `senate`|
|session-number|`1` or `2`, depending on year (1 is odd-numbered years, 2 is even-numbered years)|
|roll-call-number| integer |

----

### Get Votes by Type

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/votes/{vote-type}.json`

|Parameter|Description|
|---------|-----------|
|congress|	102-115 for House, 80-115 for Senate|
|chamber|	`house` or `senate`|
|vote-type|	missed, party, loneno or perfect|

----

### Get Votes by Date

`GET https://api.propublica.org/congress/v1/{chamber}/votes/{year}/{month}.json`
`GET https://api.propublica.org/congress/v1/{chamber}/votes/{start-date}/{end-date}.json`

##### URL Parameters

For year and month requests:

|Parameter|Description||---|---||chamber|house, senate or both||year|YYYY format||month|MM format||passed|latest_major_action_date|

For date range requests:

|Parameter|Description||---|---||chamber|house or senate||start-date|YYYY-MM-DD format||end-date|YYYY-MM-DD format|

----

### Get Senate Nomination Votes

`GET https://api.propublica.org/congress/v1/{congress}/nominations.json`

|Parameter|Description||---|---||congress|101-115|

----

----
----

## Other Endpoints

**Statements**

### Get Recent Congressional Statements

`GET https://api.propublica.org/congress/v1/statements/latest.json`


----

### Get Congressional Statements by Date

`GET https://api.propublica.org/congress/v1/statements/date/{date}.json`

|Parameter|Description||---|---||date|YYYY-MM-DD format|

**Example Call**

`curl "https://api.propublica.org/congress/v1/statements/date/2017-05-08.json"
  -H "X-API-Key: PROPUBLICA_API_KEY"`

----

### Get Congressional Statements by Search Term

`GET https://api.propublica.org/congress/v1/statements/search.json?query={term}`

|Parameter|Description||---|---||term|search term|

----

### Get Statement Subjects

`GET https://api.propublica.org/congress/v1/statements/subjects.json`


----

### Get Congressional Statements by Subject

`GET https://api.propublica.org/congress/v1/statements/subject/{subject}.json`

|Parameter|Description||---|---||subject|slug version of subject|

----

### Get Congressional Statements by Member

`GET https://api.propublica.org/congress/v1/members/{member-id}/statements/{congress}.json`

|Parameter|Description||---|---||member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.||congress|113-115|

----


**Personal Explanations**

### Get Recent Personal Explanations

`GET https://api.propublica.org/congress/v1/{congress}/explanations.json`

|Parameter|Description||---|---||congress|107-115|

----

### Get Recent Personal Explanations by a Specific Member

`GET https://api.propublica.org/congress/v1/members/{member_id}/explanations/{congress}.json`

|Parameter|Description||---|---||member-id|The ID of the member to retrieve; it is assigned by the Biographical Directory of the United States Congress or can be retrieved from a member list request.||congress|107-115|

----

### Get Recent Parsed Personal Explanations

`GET https://api.propublica.org/congress/v1/{congress}/explanations/parsed.json`

|Parameter|Description|
|---------|-----------||congress|107-115|

----

**Nominations**

### Get Recent Nominations by Category

`GET https://api.propublica.org/congress/v1/{congress}/nominees/{type}.json`

|Parameter|Description||---|---||congress|107-115||type|`received`, `updated`, `confirmed`, `withdrawn`|

----

### Get a Specific Nominations

`GET https://api.propublica.org/congress/v1/{congress}/nominees/{nominee-id}.json`

|Parameter|Description||---|---||congress|107-115||nominee-id|alphanumeric ID beginning with PN - for example, PN675|


----

### Get Nominations by State

`GET https://api.propublica.org/congress/v1/{congress}/nominees/state/{state}.json`

|Parameter|Description||---|---||congress|107-115||state|Two-letter state abbreviation|

----

**Floor Actions**

### Get Recent House and Senate Floor Actions

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/floor_updates.json`

|Parameter|Description||---|---||congress|113-115||chamber|`house` or `senate`|

----

### Get House and Senate Floor Actions by Date

`GET https://api.propublica.org/congress/v1/{chamber}/floor_updates/{year}/{month}/{day}.json`

|arameter|Description||---|---||chamber|house or senate||year|YYYY format||month|MM format||day|DD format|

----

**Other Responses**

### Get State Party Counts

`GET https://api.propublica.org/congress/v1/states/members/party.json`


----

### Lists of Committees

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees.json`

|Parameter|Description||---|---||congress|110-115||chamber|`house`, `senate` or `joint`|

----

### Get a Specific Committee

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees/{committee-id}.json`

|Parameter|Description||---|---||congress|110-115||chamber|house, senate or joint||committee-id|Committee abbreviation, for example HSAG. Use the full committees response to find abbreviations.|

----

### Get Recent Committee Hearings

`GET https://api.propublica.org/congress/v1/{congress}/committees/hearings.json`

|Parameter|Description||---|---||congress|114-115|


----

### Get Hearings for a Specific Committee

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees/{committee-id}/hearings.json`

|Parameter|Description||---|---||congress|114-115||chamber|`house` or `senate`||committee-id|Optional committee abbreviation, for example HSAG. Use the full committees response to find abbreviations.|

----

### Get a Specific Subcommittee

`GET https://api.propublica.org/congress/v1/{congress}/{chamber}/committees/{committee-id}/subcommittees/{subcommittee-id}.json`

|Parameter|Description||---|---||congress|114-115||chamber|`house`, `senate` or `joint`||committee-id|Committee abbreviation, for example HSAG. Use the full committees response to find abbreviations.|

----
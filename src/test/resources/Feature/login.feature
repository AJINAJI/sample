Feature: veryfy the Adactin HotelApp

  Scenario Outline: verify the Adactin login page with valid credential
    Given verify user on the adaction page
    When verify the login page "<username>" and "<password>" should be click
    And verify the hotel search page "<Location>" and  "<Hotels>" and "<RoomType>"  and  "<Rooms>" and  "<InDate>" and  "<OutDate>" and  "<Adults>" and  "<Children>"  should click search button
    And verify select Hotel  and click continue
    And verify the personal Deatils "<FirstName>" and "<LastName>" and "<Address>" and  "<CardNo>" and  "<CardType>" and  "<ExpiryDate>" and  "<Expiryyear>" and  "<CVV>" bokking confirmation
    Then user should verify success message

    Examples: 
      | username  | password | Location    | Hotels         | RoomType     | Rooms | InDate     | OutDate    | Adults | Children | FirstName | LastName | Address | CardNo           | CardType         | ExpiryDate | Expiryyear | CVV  |
      | AJIAJIAJI | ajiAJI6@ | Sydney      | Hotel Creek    | Standard     |     2 | 11/09/2021 | 12/09/2021 |      2 |        1 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Melbourne   | Hotel Sunshine | Double       |     3 | 13/09/2021 | 14/09/2021 |      3 |        2 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Brisbane    | Hotel Cornice  | Deluxe       |     4 | 14/09/2021 | 15/09/2021 |      4 |        3 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Adelaide    | Hotel Hervey   | Super Deluxe |     5 | 15/09/2021 | 16/09/2021 |      4 |        4 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | London      | Hotel Creek    | Deluxe       |     7 | 16/09/2021 | 17/09/2021 |      3 |        0 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | New York    | Hotel Sunshine | Standard     |     6 | 17/09/2021 | 18/09/2021 |      2 |        1 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Los Angeles | Hotel Creek    | Double       |     9 | 18/09/2021 | 19/09/2021 |      2 |        3 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Paris       | Hotel Cornice  | Super Deluxe |     8 | 19/09/2021 | 20/09/2021 |      3 |        4 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Adelaide    | Hotel Sunshine | Deluxe       |    10 | 20/09/2021 | 21/09/2021 |      4 |        2 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
      | AJIAJIAJI | ajiAJI6@ | Sydney      | Hotel Hervey   | Double       |     2 | 21/09/2021 | 22/09/2021 |      3 |        3 | AJIN      | AJI      | CHENNAI | 6543211234567898 | American Express | January    |       2022 | 8753 |
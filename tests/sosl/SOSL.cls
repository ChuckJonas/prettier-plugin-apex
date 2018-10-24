class SOSLClass {
  void simpleSOSL() {
    String a = 'Hello';
    List<List<SObject>> searchResult = [FIND 'FirstLastName'];
    searchResult = [FIND :a];
  }
  void inClause() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' IN ALL FIELDS];
    searchResult = [FIND 'Hello' in all fields];
    searchResult = [FIND 'Hello' IN EMAIL FIELDS];
    searchResult = [FIND 'Hello' IN NAME FIELDS];
    searchResult = [FIND 'Hello' IN PHONE FIELDS];
    searchResult = [FIND 'Hello' IN SIDEBAR FIELDS];
  }
  void withDivisionClause() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH Division = 'Global'];
    searchResult = [FIND 'Hello' WITH Division = :a];
  }
  void withDataCategory() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Location__c AT America__c];
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Geography__c ABOVE France__c AND Product__c AT mobile_phones__c];
    searchResult = [FIND 'Hello' WITH DATA CATEGORY Geography__c below Europe__c];
  }
  void withSnippet() {
    List<List<SObject>> searchResult;
    String a = 'Local';
    searchResult = [FIND 'Hello' WITH SNIPPET];
    searchResult = [FIND 'Hello' WITH SNIPPET (target_length=120)];
    searchResult = [FIND 'Hello' WITH SNIPPET (TARGET_LENGTH=120)];
  }
  void withNetwork() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' WITH Network = 'NetworkId'];
    searchResult = [FIND 'Hello' WITH Network IN ('NetworkId1', 'NetworkId2', 'NetworkId3')];
    searchResult = [FIND 'Hello' WITH Network = '00000000000000'];
    searchResult = [FIND 'Hello' WITH Network IN ('NetworkId1', 'NetworkId2', 'NetworkId3', 'NetworkId4', 'NetworkId5', 'NetworkId6')];
  }
  void withPricebookId() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' WITH PriceBookId = '01sxx0000002MffAAE'];
    // Technically the following line is not correct Apex, since PriceBookId
    // cannot be used with IN, but it's the only semi-accurate example I can
    // find for SearchWithClauseValue with multiple string values
    searchResult = [FIND 'Hello' WITH PriceBookId IN ('01sxx0000002MffAAE', '1234')];
    searchResult = [FIND 'Hello' WITH PriceBookId = '01sxx0000002MffAAE' WITH PriceBookId = '01sxx0000002MffAAE' WITH PriceBookId = '01sxx0000002MffAAE'];
  }
  void withMetadata() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' WITH METADATA = 'LABELS'];
  }
  void withHighlight() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' WITH HIGHLIGHT];
  }
  void withSpellCorrection() {
    List<List<SObject>> searchResult;
    searchResult = [FIND 'Hello' WITH SPELL_CORRECTION = true];
    searchResult = [FIND 'Hello' WITH SPELL_CORRECTION = false];
  }
}
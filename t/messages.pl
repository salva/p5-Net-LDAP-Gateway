$message = [
             {
               "packed" => "08\2\3\0\302\2`!\2\1\3\4\22cn=foo, o=internet\200\bpassword\240\0160\f\4\a1.2.3.4\1\1\377",
               "perl" => [
                           49666,
                           "LDAP_OP_BIND_REQUEST",
                           {
                             "password" => "password",
                             "version" => 3,
                             "method" => "LDAP_AUTH_SIMPLE",
                             "dn" => "cn=foo, o=internet"
                           },
                           [
                             {
                               "criticality" => 1,
                               "type" => "1.2.3.4"
                             }
                           ]
                         ],
               "peek" => "cn=foo, o=internet",
               "asn1" => [
                           "bindRequest",
                           {
                             "version" => 3,
                             "name" => "cn=foo, o=internet",
                             "authentication" => {
                                                   "simple" => "password"
                                                 }
                           },
                           "controls",
                           [
                             {
                               "critical" => 1,
                               "type" => "1.2.3.4"
                             }
                           ]
                         ]
             },
             {
               "packed" => "0 \2\2v[B\0\240\0300\26\4\0052.1.2\4\rhello control",
               "perl" => [
                           30299,
                           "LDAP_OP_UNBIND_REQUEST",
                           {},
                           [
                             {
                               "value" => "hello control",
                               "type" => "2.1.2"
                             }
                           ]
                         ],
               "asn1" => [
                           "unbindRequest",
                           {},
                           "controls",
                           [
                             {
                               "value" => "hello control",
                               "type" => "2.1.2"
                             }
                           ]
                         ]
             },
             {
               "packed" => "0\201\207\2\3\0\315BcX\4\rcn=bar, o=org\n\1\0\n\1\1\2\2\0\310\2\2\1,\1\1\0\240\34\207\13objectClass\243\r\4\5adesc\4\4aval0\30\4\13objectClass\4\tgivenName\240&0\f\4\a1.2.3.4\1\1\3770\26\4\0052.1.2\4\rhello control",
               "perl" => [
                           52546,
                           "LDAP_OP_SEARCH_REQUEST",
                           {
                             "deref_aliases" => "LDAP_DEREF_ALIASES_IN_SEARCHING",
                             "base_dn" => "cn=bar, o=org",
                             "filter" => [
                                           "LDAP_FILTER_AND",
                                           [
                                             "LDAP_FILTER_PRESENT",
                                             "objectClass"
                                           ],
                                           [
                                             "LDAP_FILTER_EQ",
                                             "adesc",
                                             "aval"
                                           ]
                                         ],
                             "size_limit" => 200,
                             "attributes" => [
                                               "objectClass",
                                               "givenName"
                                             ],
                             "time_limit" => 300,
                             "scope" => "LDAP_SCOPE_BASE_OBJECT"
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "peek" => "cn=bar, o=org",
               "asn1" => [
                           "searchRequest",
                           {
                             "timeLimit" => 300,
                             "baseObject" => "cn=bar, o=org",
                             "filter" => {
                                           "and" => [
                                                      {
                                                        "present" => "objectClass"
                                                      },
                                                      {
                                                        "equalityMatch" => {
                                                                             "assertionValue" => "aval",
                                                                             "attributeDesc" => "adesc"
                                                                           }
                                                      }
                                                    ]
                                         },
                             "sizeLimit" => 200,
                             "derefAliases" => 1,
                             "typesOnly" => 0,
                             "attributes" => [
                                               "objectClass",
                                               "givenName"
                                             ],
                             "scope" => 0
                           },
                           "controls",
                           [
                             {},
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0O\2\3\1\13Wc-\4\rcn=bar, o=org\n\1\2\n\1\3\2\1\0\2\1\0\1\1\0\207\13objectClass0\0\240\0310\27\4\0053.1.2\1\1\377\4\13bye control",
               "perl" => [
                           68439,
                           "LDAP_OP_SEARCH_REQUEST",
                           {
                             "deref_aliases" => "LDAP_DEREF_ALIASES_ALWAYS",
                             "base_dn" => "cn=bar, o=org",
                             "filter" => [
                                           "LDAP_FILTER_PRESENT",
                                           "objectClass"
                                         ],
                             "scope" => "LDAP_SCOPE_WHOLE_SUBTREE"
                           },
                           [
                             {
                               "value" => "bye control",
                               "criticality" => 1,
                               "type" => "3.1.2"
                             }
                           ]
                         ],
               "peek" => "cn=bar, o=org",
               "asn1" => [
                           "searchRequest",
                           {
                             "timeLimit" => 0,
                             "baseObject" => "cn=bar, o=org",
                             "filter" => {
                                           "present" => "objectClass"
                                         },
                             "sizeLimit" => 0,
                             "typesOnly" => 0,
                             "derefAliases" => 3,
                             "attributes" => [],
                             "scope" => 2
                           },
                           "controls",
                           [
                             {
                               "critical" => 1,
                               "value" => "bye control",
                               "type" => "3.1.2"
                             }
                           ]
                         ]
             },
             {
               "packed" => "0\202\31\260\2\3\0\360\267f\202\31\177\4\202\31dcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=bar0\0250\23\n\1\0020\16\4\3foo1\a\4\5hello\240&0\f\4\a1.2.3.4\1\1\3770\26\4\0052.1.2\4\rhello control",
               "perl" => [
                           61623,
                           "LDAP_OP_MODIFY_REQUEST",
                           {
                             "changes" => [
                                            {
                                              "attribute" => "foo",
                                              "values" => [
                                                            "hello"
                                                          ],
                                              "operation" => "LDAP_MODOP_REPLACE"
                                            }
                                          ],
                             "dn" => "cn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=bar"
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "peek" => "cn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=bar",
               "asn1" => [
                           "modifyRequest",
                           {
                             "object" => "cn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=barcn=paco,o=bar",
                             "modification" => [
                                                 {
                                                   "modification" => {
                                                                       "type" => "foo",
                                                                       "vals" => [
                                                                                   "hello"
                                                                                 ]
                                                                     },
                                                   "operation" => 2
                                                 }
                                               ]
                           },
                           "controls",
                           [
                             {},
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0n\2\3\0\320\350fg\4\rcn=paco,o=bar0V0\23\n\1\0020\16\4\3foo1\a\4\5hello0\31\n\1\0000\24\4\3bar1\r\4\3bye\4\6really0\26\n\1\0010\21\4\3doz1\n\4\3coz\4\3muu0\f\n\1\0010\a\4\3yyy1\0",
               "perl" => [
                           53480,
                           "LDAP_OP_MODIFY_REQUEST",
                           {
                             "changes" => [
                                            {
                                              "attribute" => "foo",
                                              "values" => [
                                                            "hello"
                                                          ],
                                              "operation" => "LDAP_MODOP_REPLACE"
                                            },
                                            {
                                              "attribute" => "bar",
                                              "values" => [
                                                            "bye",
                                                            "really"
                                                          ],
                                              "operation" => "LDAP_MODOP_ADD"
                                            },
                                            {
                                              "attribute" => "doz",
                                              "values" => [
                                                            "coz",
                                                            "muu"
                                                          ],
                                              "operation" => "LDAP_MODOP_DELETE"
                                            },
                                            {
                                              "attribute" => "yyy",
                                              "values" => [],
                                              "operation" => "LDAP_MODOP_DELETE"
                                            }
                                          ],
                             "dn" => "cn=paco,o=bar"
                           }
                         ],
               "peek" => "cn=paco,o=bar",
               "asn1" => [
                           "modifyRequest",
                           {
                             "object" => "cn=paco,o=bar",
                             "modification" => [
                                                 {
                                                   "modification" => {
                                                                       "type" => "foo",
                                                                       "vals" => [
                                                                                   "hello"
                                                                                 ]
                                                                     },
                                                   "operation" => 2
                                                 },
                                                 {
                                                   "modification" => {
                                                                       "type" => "bar",
                                                                       "vals" => [
                                                                                   "bye",
                                                                                   "really"
                                                                                 ]
                                                                     },
                                                   "operation" => 0
                                                 },
                                                 {
                                                   "modification" => {
                                                                       "type" => "doz",
                                                                       "vals" => [
                                                                                   "coz",
                                                                                   "muu"
                                                                                 ]
                                                                     },
                                                   "operation" => 1
                                                 },
                                                 {
                                                   "modification" => {
                                                                       "type" => "yyy",
                                                                       "vals" => []
                                                                     },
                                                   "operation" => 1
                                                 }
                                               ]
                           }
                         ]
             },
             {
               "packed" => "0.\2\3\1\24\220h'\4\rcn=paco,o=bar0\0260\24\4\3bar1\r\4\3bye\4\6really",
               "perl" => [
                           70800,
                           "LDAP_OP_ADD_REQUEST",
                           {
                             "bar" => [
                                        "bye",
                                        "really"
                                      ],
                             "dn" => "cn=paco,o=bar"
                           }
                         ],
               "peek" => "cn=paco,o=bar",
               "asn1" => [
                           "addRequest",
                           {
                             "objectName" => "cn=paco,o=bar",
                             "attributes" => [
                                               {
                                                 "type" => "bar",
                                                 "vals" => [
                                                             "bye",
                                                             "really"
                                                           ]
                                               }
                                             ]
                           }
                         ]
             },
             {
               "packed" => "0/\2\3\1j_J\fou=foo,o=org\240\0320\n\4\b12.3.4.50\f\4\a1.2.3.4\1\1\377",
               "perl" => [
                           92767,
                           "LDAP_OP_DELETE_REQUEST",
                           {
                             "dn" => "ou=foo,o=org"
                           },
                           [
                             {
                               "type" => "12.3.4.5"
                             },
                             {}
                           ]
                         ],
               "peek" => "ou=foo,o=org",
               "asn1" => [
                           "delRequest",
                           "ou=foo,o=org",
                           "controls",
                           [
                             {
                               "type" => "12.3.4.5"
                             },
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0p\2\3\1v\16l\@\4\36cn=Modify Me,dc=example,dc=com\4\rcn=The New Me\1\1\377\200\fo=mama,o=org\240'0\f\4\a1.2.3.4\1\1\3770\27\4\0053.1.2\1\1\377\4\13bye control",
               "perl" => [
                           95758,
                           "LDAP_OP_MODIFY_DN_REQUEST",
                           {
                             "new_rdn" => "cn=The New Me",
                             "new_superior" => "o=mama,o=org",
                             "delete_old_rdn" => 1,
                             "dn" => "cn=Modify Me,dc=example,dc=com"
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "peek" => "cn=Modify Me,dc=example,dc=com",
               "asn1" => [
                           "modDNRequest",
                           {
                             "entry" => "cn=Modify Me,dc=example,dc=com",
                             "deleteoldrdn" => 1,
                             "newrdn" => "cn=The New Me",
                             "newSuperior" => "o=mama,o=org"
                           },
                           "controls",
                           [
                             {},
                             {}
                           ]
                         ]
             },
             {
               "packed" => "02\2\3\0\260\202n\e\4\fou=foo,o=org0\13\4\3foo\4\4koko\240\0160\f\4\a1.2.3.4\1\1\377",
               "perl" => [
                           45186,
                           "LDAP_OP_COMPARE_REQUEST",
                           {
                             "attribute" => "foo",
                             "value" => "koko",
                             "dn" => "ou=foo,o=org"
                           },
                           [
                             {}
                           ]
                         ],
               "peek" => "ou=foo,o=org",
               "asn1" => [
                           "compareRequest",
                           {
                             "entry" => "ou=foo,o=org",
                             "ava" => {
                                        "assertionValue" => "koko",
                                        "attributeDesc" => "foo"
                                      }
                           },
                           "controls",
                           [
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0/\2\3\1M\336P\1\2\240%0\n\4\b12.3.4.50\27\4\0053.1.2\1\1\377\4\13bye control",
               "perl" => [
                           85470,
                           "LDAP_OP_ABANDON_REQUEST",
                           {
                             "message_id" => 2
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "peek" => 2,
               "asn1" => [
                           "abandonRequest",
                           2,
                           "controls",
                           [
                             {},
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0\n\2\3\1?NP\3\0\3453",
               "perl" => [
                           81742,
                           "LDAP_OP_ABANDON_REQUEST",
                           {
                             "message_id" => 58675
                           }
                         ],
               "peek" => 58675,
               "asn1" => [
                           "abandonRequest",
                           58675
                         ]
             },
             {
               "packed" => "0K\2\3\0\317hw\e\200\00616.4.3\201\21mi casa, telefono\240'0\f\4\a1.2.3.4\1\1\3770\27\4\0053.1.2\1\1\377\4\13bye control",
               "perl" => [
                           53096,
                           "LDAP_OP_EXTENDED_REQUEST",
                           {
                             "value" => "mi casa, telefono",
                             "oid" => "16.4.3"
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "asn1" => [
                           "extendedReq",
                           {
                             "requestValue" => "mi casa, telefono",
                             "requestName" => "16.4.3"
                           },
                           "controls",
                           [
                             {},
                             {}
                           ]
                         ]
             },
             {
               "packed" => "0(\2\2S\253a\"\n\1\1\4\5o=foo\4\3Bar\243\13\4\4done\4\3max\207\4vito",
               "perl" => [
                           21419,
                           "LDAP_OP_BIND_RESPONSE",
                           {
                             "matched_dn" => "o=foo",
                             "referrals" => [
                                              "done",
                                              "max"
                                            ],
                             "sasl_credentials" => "vito",
                             "message" => "Bar",
                             "result" => "LDAP_OPERATIONS_ERROR"
                           }
                         ],
               "peek" => "LDAP_OPERATIONS_ERROR",
               "asn1" => [
                           "bindResponse",
                           {
                             "resultCode" => 1,
                             "referral" => [
                                             "done",
                                             "max"
                                           ],
                             "matchedDN" => "o=foo",
                             "serverSaslCreds" => "vito",
                             "errorMessage" => "Bar"
                           }
                         ]
             },
             {
               "packed" => "0,\2\3\1Qdd%\4\fou=bar,o=foo0\0250\23\4\3moo1\f\4\4miau\4\4dont",
               "perl" => [
                           86372,
                           "LDAP_OP_SEARCH_ENTRY_RESPONSE",
                           {
                             "moo" => [
                                        "miau",
                                        "dont"
                                      ],
                             "dn" => "ou=bar,o=foo"
                           }
                         ],
               "peek" => "ou=bar,o=foo",
               "asn1" => [
                           "searchResEntry",
                           {
                             "objectName" => "ou=bar,o=foo",
                             "attributes" => [
                                               {
                                                 "type" => "moo",
                                                 "vals" => [
                                                             "miau",
                                                             "dont"
                                                           ]
                                               }
                                             ]
                           }
                         ]
             },
             {
               "packed" => "0F\2\3\1k\316s\26\4\3foo\4\3bar\4\3doz\4\5miaou\240'0\f\4\a1.2.3.4\1\1\3770\27\4\0053.1.2\1\1\377\4\13bye control",
               "perl" => [
                           93134,
                           "LDAP_OP_SEARCH_REFERENCE_RESPONSE",
                           {
                             "uris" => [
                                         "foo",
                                         "bar",
                                         "doz",
                                         "miaou"
                                       ]
                           },
                           [
                             {},
                             {}
                           ]
                         ],
               "asn1" => [
                           "searchResRef",
                           [
                             "foo",
                             "bar",
                             "doz",
                             "miaou"
                           ]
                         ]
             },
             {
               "packed" => "01\2\2P\326e\21\n\1\2\4\0\4\nSuper-Coco\240\0300\26\4\0052.1.2\4\rhello control",
               "perl" => [
                           20694,
                           "LDAP_OP_SEARCH_DONE_RESPONSE",
                           {
                             "matched_dn" => "",
                             "message" => "Super-Coco",
                             "result" => "LDAP_PROTOCOL_ERROR"
                           },
                           [
                             {}
                           ]
                         ],
               "peek" => "LDAP_PROTOCOL_ERROR",
               "asn1" => [
                           "searchResDone",
                           {
                             "resultCode" => 2,
                             "matchedDN" => "",
                             "errorMessage" => "Super-Coco"
                           }
                         ]
             },
             {
               "packed" => "0\202\37\217\2\3\1\0\32x\202\37v\n\1\3\4\rou=doom,o=com\4\aTiriron\243\f\4\3quo\4\5vadis\212\amy name\213\202\37\@my valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy value\240\0160\f\4\a1.2.3.4\1\1\377",
               "perl" => [
                           65562,
                           "LDAP_OP_EXTENDED_RESPONSE",
                           {
                             "matched_dn" => "ou=doom,o=com",
                             "value" => "my valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy value",
                             "referrals" => [
                                              "quo",
                                              "vadis"
                                            ],
                             "name" => "my name",
                             "message" => "Tiriron",
                             "result" => "LDAP_TIME_LIMIT_EXCEEDED"
                           },
                           [
                             {}
                           ]
                         ],
               "peek" => "LDAP_TIME_LIMIT_EXCEEDED",
               "asn1" => [
                           "extendedResp",
                           {
                             "resultCode" => 3,
                             "referral" => [
                                             "quo",
                                             "vadis"
                                           ],
                             "response" => "my valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy valuemy value",
                             "matchedDN" => "ou=doom,o=com",
                             "responseName" => "my name",
                             "errorMessage" => "Tiriron"
                           }
                         ]
             }
           ];
$message->[2]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[2]{"perl"}[3][1] = $message->[1]{"perl"}[3][0];
$message->[2]{"asn1"}[3][0] = $message->[0]{"asn1"}[3][0];
$message->[2]{"asn1"}[3][1] = $message->[1]{"asn1"}[3][0];
$message->[4]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[4]{"perl"}[3][1] = $message->[1]{"perl"}[3][0];
$message->[4]{"asn1"}[3][0] = $message->[0]{"asn1"}[3][0];
$message->[4]{"asn1"}[3][1] = $message->[1]{"asn1"}[3][0];
$message->[7]{"perl"}[3][1] = $message->[0]{"perl"}[3][0];
$message->[7]{"asn1"}[3][1] = $message->[0]{"asn1"}[3][0];
$message->[8]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[8]{"perl"}[3][1] = $message->[3]{"perl"}[3][0];
$message->[8]{"asn1"}[3][0] = $message->[0]{"asn1"}[3][0];
$message->[8]{"asn1"}[3][1] = $message->[3]{"asn1"}[3][0];
$message->[9]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[9]{"asn1"}[3][0] = $message->[0]{"asn1"}[3][0];
$message->[10]{"perl"}[3][0] = $message->[7]{"perl"}[3][0];
$message->[10]{"perl"}[3][1] = $message->[3]{"perl"}[3][0];
$message->[10]{"asn1"}[3][0] = $message->[7]{"asn1"}[3][0];
$message->[10]{"asn1"}[3][1] = $message->[3]{"asn1"}[3][0];
$message->[12]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[12]{"perl"}[3][1] = $message->[3]{"perl"}[3][0];
$message->[12]{"asn1"}[3][0] = $message->[0]{"asn1"}[3][0];
$message->[12]{"asn1"}[3][1] = $message->[3]{"asn1"}[3][0];
$message->[15]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];
$message->[15]{"perl"}[3][1] = $message->[3]{"perl"}[3][0];
$message->[16]{"perl"}[3][0] = $message->[1]{"perl"}[3][0];
$message->[17]{"perl"}[3][0] = $message->[0]{"perl"}[3][0];

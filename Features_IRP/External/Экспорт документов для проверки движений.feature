﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт документов для проверки движений

Сценарий: згрузка документа Поступление товаров и услуг

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d52f' | 'False'        | 5      | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d530' | 'False'        | 6      | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'               | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | 'False'        | 1001     | '12.04.2022 9:59:33' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=9f913c7c3f1675cb11ecb9f36346d52e' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | '6581816e-2aca-4ee5-bef9-11408e7b6cd0' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d52f' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d531' | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | '35cd315c-7d4a-4257-bd3b-ee00dfa5ebc4' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d530' | ''         |

Сценарий: загрузка Поступление товаров и услуг с завтрашней датой

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales' | 'Company'                                                           | 'CurrencySales' | 'LegalNameSales' | 'PartnerSales' | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                    | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                                        | 'TransactionTypeGR'                          | 'TransactionType' | 'Requester' | 'AgreementPurchases'                                                 | 'PartnerPurchases'                                                 | 'LegalNamePurchases'                                                | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases'                                                  |
		| 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d532' | 'False'        | 7      | '0675034e-bb77-4c5f-bc45-e53991b160fd' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '0675034e-bb77-4c5f-bc45-e53991b160fd' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |
		| 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d533' | 'False'        | 8      | '7fb06ef4-7905-4fd8-af55-84482dde123c' | ''               | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | ''              | ''               | ''             | 'False'                | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | ''       | 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '7fb06ef4-7905-4fd8-af55-84482dde123c' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.ReturnToVendor' | 'Enum.GoodsReceiptTransactionTypes.Purchase' | ''                | ''          | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'True'                     | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |

	// Документ.PurchaseInvoice

	И я проверяю или создаю для документа "PurchaseInvoice" объекты:
		| 'Ref'                                                                      | 'DeletionMark' | 'Number' | 'Date'                                 | 'Posted' | 'Agreement'                                                          | 'Company'                                                           | 'Currency'                                                           | 'DocDate'            | 'DocNumber' | 'LegalName'                                                         | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | 'False'        | 1002     | '{Строка(КонецДня(ТекущаяДата()) + 10)}' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6871' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | ''          | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb766bf96b2771' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794e' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 400              |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                      | 'Key'                                  | 'ItemKey'                                                          | 'Store'                                                          | 'PurchaseOrder' | 'Unit'                                                          | 'Quantity' | 'Price' | 'PriceType'                                             | 'TaxAmount' | 'TotalAmount' | 'NetAmount' | 'OffersAmount' | 'ProfitLossCenter' | 'ExpenseType'                                                                    | 'DeliveryDate'       | 'SalesOrder' | 'Detail' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseGoodsReceipt' | 'InternalSupplyRequest' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '0675034e-bb77-4c5f-bc45-e53991b160fd' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 2          | 100     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | ''                                                                               | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 2                    | 'True'            | ''                      |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '7fb06ef4-7905-4fd8-af55-84482dde123c' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2753' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | ''              | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 1          | 200     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 33.33       | 200           | 166.67      |                | ''                 | 'e1cib/data/Catalog.ExpenseAndRevenueTypes?ref=9f913c7c3f1675cb11ecb9f36346d52e' | '01.01.0001 0:00:00' | ''           | ''       | ''                   | 'False'            | 1                    | 'False'           | ''                      |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                      | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '0675034e-bb77-4c5f-bc45-e53991b160fd' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '7fb06ef4-7905-4fd8-af55-84482dde123c' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 33.33    | 'True'                 | 33.33          |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                      | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 343.6    | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 400      | 'False'   |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                      | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '0675034e-bb77-4c5f-bc45-e53991b160fd' | '0675034e-bb77-4c5f-bc45-e53991b160fd' | 2          | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d532' | ''         |
		| 'e1cib/data/Document.PurchaseInvoice?ref=9f913c7c3f1675cb11ecb9f36346d534' | '7fb06ef4-7905-4fd8-af55-84482dde123c' | '7fb06ef4-7905-4fd8-af55-84482dde123c' | 1          | ''      | ''            | ''                                            | 'e1cib/data/Catalog.RowIDs?ref=9f913c7c3f1675cb11ecb9f36346d533' | ''         |


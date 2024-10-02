namespace shippingregister.db;

using { Currency, managed } from '@sap/cds/common';

// Main tracking record entity
entity TrackingRecord : managed {
  key ID : UUID;
  TrackingRecordID: Integer @readonly default 0;
  SequenceNo : String;
  OldFileNumber : String;
  Forwarder : Association to Vendor;
  Supplier : Association to Vendor;
  FreightType : Association to FreightTypes;
  ShipmentMethod : Association to ShipmentMethods;
  TCode : String;  // Can be removed if not needed
  WaybillOrBOL : String;
  ContainerNumber : Association to Containers;
  ShipDate : Date;
  ArrivalDate : Date;
  InboundCaptured : Date;
  InvoiceNumber: Association to many Invoices;  // One Waybill can have multiple Invoices
  InvoiceDate : Date;
  InvoiceValue : Decimal(15,2);
  Currency : Currency;
  Weight : Decimal(15,3);
  FreightCharge : Association to FreightInvoice;
  VAT : Decimal(15,2);
  Duty : Decimal(15,2);
  CustomsClearance : Decimal(16,2);
  AdditionalCharges : Decimal(16,2);
  TotalFreightCost : Decimal(16,2);
  ValueOfInvoiceLocalCurr : Decimal(16,5);
  MRNNumber : String;
  User : String;
  ShippingLeadTime : Decimal(5,2);
  ContainerQty : Association to Containers;
  NoOf40Foot : Integer;
  NoOf20Foot : Integer;
  EntryStatus : String;
  AllDocumentsLoadedInFolder : Boolean;
  WeekReceived : Integer;
  VOCRequired : Boolean;
  OriginPort : Association to Port;
  ETA : Date;
  HubType : String;
  ALCOrELCOutboundNumber : Integer;
  ChargeOut : Decimal(16,2);
  TicketReferenceForChargeOut : String;
  ChargeOutRequired : Boolean;
  YearCreated : Integer;
  WeightBucket : String;
  CostPerKg : Decimal(16,2);
  ArrivalDateManipulated : Date;
  YearArrived : Integer;
}


// Vendor entity for both Forwarder and Supplier
entity Vendor {
  key ID : UUID;
Name : String;
  Type : String;  // Could be 'Forwarder' or 'Supplier'
}

// Enumeration for freight types
entity FreightTypes {

  key code : String(16) enum {
  DAP          = 'DAP (Delivered at Place)';
  DAP_Free     = 'DAP/Free Freight';
  DAT          = 'DAT (Delivered to terminal)';
  DAT_Free     = 'DAT/Free Freight';
  FCA          = 'FCA (door to door)';
  };
}

// Shipment method entity
entity ShipmentMethods {
  key ID : UUID;
  Method : String;
  Description : String;
}

// Container entity
entity Containers {
  key ID : UUID;
  SerialNumber : String;
  ContainerType : String;
  ContainerWeight : Decimal(15,3);
  ContainerQty : Integer;
  SealNo1 : String;
  SealNo2 : String;
  SealNo3 : String;
  SealNo4 : String;
  SealNo5 : String;
  SealNo6 : String;
}

// Invoice entity for storing multiple invoices
entity Invoices {
  key ID : UUID;
  InvoiceNumber : String;
  Supplier : Association to Vendor;
  InvoiceDate : Date;
  InvoiceValue : Decimal(15,2);
}

// Freight invoice entity
entity FreightInvoice {
  key ID : UUID;
  Weight: Decimal(15,2);
   Currency : Currency;
  FreightCharge : Decimal(15,2);
  VAT : Decimal(15,2);
  Duty : Decimal(15,2);
  CustomsClearance : Decimal(15,2);
  AdditionalCharges : Decimal(15,2);
  TotalFreightCost : Decimal(15,2);
}

// Port entity for origin ports
entity Port {
  key ID : UUID;
  PortCode : String;
  Name : String;
  Type : String;  // e.g., 'Airport', 'Seaport'
  Description : String;
}

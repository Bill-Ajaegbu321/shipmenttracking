using shipmenttrackingService as service from '../../srv/service';
annotate service.TrackingRecords with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'TrackingRecordID',
                Value : TrackingRecordID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SequenceNo',
                Value : SequenceNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OldFileNumber',
                Value : OldFileNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FreightType_code',
                Value : FreightType_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TCode',
                Value : TCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WaybillOrBOL',
                Value : WaybillOrBOL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShipDate',
                Value : ShipDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ArrivalDate',
                Value : ArrivalDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InboundCaptured',
                Value : InboundCaptured,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InvoiceDate',
                Value : InvoiceDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'InvoiceValue',
                Value : InvoiceValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency_code',
                Value : Currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Weight',
                Value : Weight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VAT',
                Value : VAT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Duty',
                Value : Duty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomsClearance',
                Value : CustomsClearance,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AdditionalCharges',
                Value : AdditionalCharges,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalFreightCost',
                Value : TotalFreightCost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ValueOfInvoiceLocalCurr',
                Value : ValueOfInvoiceLocalCurr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MRNNumber',
                Value : MRNNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'User',
                Value : User,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShippingLeadTime',
                Value : ShippingLeadTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NoOf40Foot',
                Value : NoOf40Foot,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NoOf20Foot',
                Value : NoOf20Foot,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EntryStatus',
                Value : EntryStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AllDocumentsLoadedInFolder',
                Value : AllDocumentsLoadedInFolder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WeekReceived',
                Value : WeekReceived,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VOCRequired',
                Value : VOCRequired,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ETA',
                Value : ETA,
            },
            {
                $Type : 'UI.DataField',
                Label : 'HubType',
                Value : HubType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ALCOrELCOutboundNumber',
                Value : ALCOrELCOutboundNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ChargeOut',
                Value : ChargeOut,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TicketReferenceForChargeOut',
                Value : TicketReferenceForChargeOut,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ChargeOutRequired',
                Value : ChargeOutRequired,
            },
            {
                $Type : 'UI.DataField',
                Label : 'YearCreated',
                Value : YearCreated,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WeightBucket',
                Value : WeightBucket,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CostPerKg',
                Value : CostPerKg,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ArrivalDateManipulated',
                Value : ArrivalDateManipulated,
            },
            {
                $Type : 'UI.DataField',
                Label : 'YearArrived',
                Value : YearArrived,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'TrackingRecordID',
            Value : TrackingRecordID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SequenceNo',
            Value : SequenceNo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OldFileNumber',
            Value : OldFileNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FreightType_code',
            Value : FreightType_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TCode',
            Value : TCode,
        },
    ],
);

annotate service.TrackingRecords with {
    Forwarder @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Vendors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Forwarder_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Type',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    Supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Vendors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Supplier_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Type',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    FreightType @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'FreightTypes',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : FreightType_code,
                ValueListProperty : 'code',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    ShipmentMethod @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'ShipmentMethods',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ShipmentMethod_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Method',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Description',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    ContainerNumber @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Containers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ContainerNumber_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SerialNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerType',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerWeight',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerQty',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    FreightCharge @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'FreightInvoices',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : FreightCharge_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Weight',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Currency_code',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'FreightCharge',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'VAT',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    ContainerQty @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Containers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ContainerQty_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'SerialNumber',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerType',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerWeight',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'ContainerQty',
            },
        ],
    }
};

annotate service.TrackingRecords with {
    OriginPort @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Ports',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : OriginPort_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'PortCode',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Type',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Description',
            },
        ],
    }
};


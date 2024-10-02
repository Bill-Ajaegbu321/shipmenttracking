sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'shipmenttracker/trackingrecord/test/integration/FirstJourney',
		'shipmenttracker/trackingrecord/test/integration/pages/TrackingRecordsList',
		'shipmenttracker/trackingrecord/test/integration/pages/TrackingRecordsObjectPage'
    ],
    function(JourneyRunner, opaJourney, TrackingRecordsList, TrackingRecordsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('shipmenttracker/trackingrecord') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTrackingRecordsList: TrackingRecordsList,
					onTheTrackingRecordsObjectPage: TrackingRecordsObjectPage
                }
            },
            opaJourney.run
        );
    }
);
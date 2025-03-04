class TestPrixzUrls {
  static String healthbirdUrl = "";
  static String zocDocUrl = "";
  static String zocdocAuthUrl = "";

  static String _medpassBaseUrl = "";

  // Authentication
  static String postLoginUrl = "$healthbirdUrl/api/auth/login";
  static String getLogoutUrl = "$healthbirdUrl/api/auth/logout";
  static String getRecoveryPasswordUrl =
      "$healthbirdUrl/api/auth/forgot-password/";
  static String registerUrl =
      "$healthbirdUrl/register?utm_source=HealthBird&utm_medium=organic&utm_campaign=mobileApp";
  static String postRxSignUp = "$healthbirdUrl/api/auth/createFreeAccount";
  static String postFcmToken = "$healthbirdUrl/api/auth/FCM";
  static String validateEmail = "$_medpassBaseUrl/api/auth/existsEmail";

  // Appointments
  static String legacyGetAppointmentsByHbKeyUrl =
      "$healthbirdUrl/api/appointments/user/";
  static String postCreateAppointmentUrl =
      "$healthbirdUrl/api/appointments/create";
  static String getDeleteAppointment =
      "$healthbirdUrl/api/appointments/delete/";
  static String postConfirmOrRejectAppointment =
      "$healthbirdUrl/api/appointments/confirm";
  static String getAppointmentsByHbKeyUrl =
      "$healthbirdUrl/api/zocdoc/getAppointments";
  static String cancelZocdocAppointment = "$zocDocUrl/v1/appointments/cancel";

  // HealthNest
  static String postAddContactUrl = "$healthbirdUrl/api/profile/createContact";
  static String getChangeEmergencyContactUrl =
      "$healthbirdUrl/api/profile/emergencyContact/";
  static String getContactsUrl = "$healthbirdUrl/api/profile/getContacts/";
  static String getDependentsUrl = "$healthbirdUrl/api/profile/getDependents/";

  // Dr Finder
  static String postDoctorsUrl = "$healthbirdUrl/api/provider/find";
  static String getLastAppointments = "$healthbirdUrl/api/appointments/latest";
  static String getDisclaimerTextUrl =
      "$healthbirdUrl/api/appointments/disclaimer";
  static String getDoctorCoverageUrl = "$healthbirdUrl/api/provider/getCovered";

  //NewDrFinder
  static String getAnonimousSesionZocDoc =
      "$healthbirdUrl/api/zocdoc/getZocdocAnonymousToken";
  static String getZocdocAccessToken = "$zocdocAuthUrl/oauth/token";
  static String getProviderLocations = "$zocDocUrl/v1/provider_locations";
  static String zodDocAppointment =
      "$healthbirdUrl/api/zocdoc/createAppointment";
  static String rescheduleZdDocAppointment =
      "$zocDocUrl/v1/appointments/reschedule";
  static final saveOrUpdateZocDocToken =
      "$healthbirdUrl/api/zocdoc/saveOrUpdateAccessToken";

  static String getProviderAvailability =
      "$zocDocUrl/v1/provider_locations/availability";
  static String postSaveOrUpdateProviderSearch =
      "$healthbirdUrl/api/zocdoc/saveOrUpdateProviderSearch";
  static String getProvidersHistory = "$healthbirdUrl/api/zocdoc/getProviders";
  static String postProviderAsFavorite =
      "$healthbirdUrl/api/zocdoc/markProviderAsFavorite";
  static String postZocdocApiLog = "$healthbirdUrl/api/zocdoc/zocdocApiLog";

  // Medications
  static String postMedicationsUrl = "$healthbirdUrl/api/medication/user/list";
  static String postUniqueMedicationsUrl =
      "$healthbirdUrl/api/medication/user/medlist";
  static String postMedicinesUrl =
      "$healthbirdUrl/api/medication/medicine/search";
  static String postRoutesUrl = "$healthbirdUrl/api/medication/medicine/route";
  static String postStrengthsUrl =
      "$healthbirdUrl/api/medication/medicine/strength";
  static String postAddMedicationUrl =
      "$healthbirdUrl/api/medication/medicine/add";
  static String postInteractionsUrl =
      "$healthbirdUrl/api/medication/medicine/interactions";
  static String postDeleteAllMedicationsUrl =
      "$healthbirdUrl/api/medication/user/delete";
  static String postDeleteOneMedicationUrl =
      "$healthbirdUrl/api/medication/user/deleteIntake";
  static String postMedicationStatusUrl =
      "$healthbirdUrl/api/medication/user/take";
  static String postMedicationRxUrl =
      "$healthbirdUrl/api/medication/medicine/RX";
  static String postMedicationRxUrlByZipcode =
      "$healthbirdUrl/api/medication/medicine/RXZIP";
  static String getLocationByZipcode =
      "https://maps.googleapis.com/maps/api/geocode/json";
  static String postRxAutocompleteSearch =
      "$healthbirdUrl/api/medication/medicine/autocompleteMedication";
  static String postRxMedicineBrands =
      "$healthbirdUrl/api/medication/medicine/brandvsgeneric";
  static String getAllMedications =
      "$healthbirdUrl/api/medication/user/medlist";
  static String getMedicationDetails =
      "$healthbirdUrl/api/medication/getMedDescription";

  //Notifications
  static String postNotificationsUrl = "$healthbirdUrl/api/notification/list";
  static String postMarkAsReadUrl = "$healthbirdUrl/api/notification/markRead";

  // Policies
  static String getAllPoliciesUrl = "$healthbirdUrl/api/policy/all";
  static String getPoliciesByHbKeyUrl = "$healthbirdUrl/api/policy/get/";
  static String uploadMemberIDUrl = "$healthbirdUrl/api/policy/memberid-upload";
  static String postFlexpaToken = "$healthbirdUrl/api/auth/getFlexpaToken";
  static String postForm1095Request =
      "$healthbirdUrl/api/documents/form1095A/send";
  static String healthBirdBlog = "https://healthbird.com/blog";
  static String registerSuplementaryInsurancee =
      "$healthbirdUrl/buy-vision-dental?utm_source=HealthBird&utm_medium=organic&utm_campaign=mobileApp";
  static String getAppleWalletPass =
      "$healthbirdUrl/api/wallet/ios/create/rxcard";
  static String getInsuranceCardAppleWalletPass =
      "$healthbirdUrl/api/wallet/ios/create/policyCard";
  static String getPivotCardAppleWalletPass =
      "$healthbirdUrl/api/wallet/ios/create/pivot";
  static String healthInsuranceUrl =
      "$healthbirdUrl/register?utm_campaign=website&utm_medium=organic&utm_source=HealthBird";
  static String sharePolicyByEmail =
      "$healthbirdUrl/api/policy/getPolicyByHBKey";
  static String sharePivotPolicyByEmail =
      "$healthbirdUrl/api/policy/sharePVPolicy";
  static String sharePolicyLink = "$healthbirdUrl/policyCard/";
  static String sharePivotPolicyLink = "$healthbirdUrl/policyCardPv/";

  // Profile
  static String getProfileUrl = "$healthbirdUrl/api/profile/getProfile/";
  static String postUploadPhotoUrl = "$healthbirdUrl/api/profile/uploadPhoto";
  static String getDocumentsUrl = "$healthbirdUrl/api/documents/all/";
  static String requestDocumentUrl = "$healthbirdUrl/api/documents/send/";
  static String renameDocumentUrl = "$healthbirdUrl/api/documents/rename";
  static String downloadDocumentUrl = "$healthbirdUrl/api/documents/download/";

  // Pending Documents
  static String getUserDocuments =
      "$healthbirdUrl/api/documents/getUserRequest";
  static String uploadUserDocument = "$healthbirdUrl/api/documents/upload";

  // Coupons
  static String saveCouponUrl = '$healthbirdUrl/api/medication/coupon/create';
  static String updateCouponUrl = '$healthbirdUrl/api/medication/coupon/update';
  static String getUserCouponsUrl =
      '$healthbirdUrl/api/medication/coupon/user/';
  static String getCouponDetailUrl = '$healthbirdUrl/api/medication/coupon/';
  static String getCouponByHBKey = '$healthbirdUrl/api/medication/coupon/get/';
  static String deleteCouponUrl =
      '$healthbirdUrl/api/medication/coupon/delete/';

  // Logger
  static String loggerUrl = '$healthbirdUrl/api/logger/trackerApp';
  static String postTrackSurvey = '$healthbirdUrl/api/logger/trackerSurvey';
  static String postTrackDowngradeModal =
      '$healthbirdUrl/api/logger/trackerDowngradeModal';

  static String appInitUrl = 'https://dev01.healthbird.com/api/appInit';

  static String pendingDocumentsUrl = '$healthbirdUrl/documents/upload2';

  static String renewalUrl = '$healthbirdUrl/renewal/mobile';

  static String renewalCallbackUrl = '$healthbirdUrl/renewal/finish';

  // MedPass
  static String medPassRegisterUrl = "https://www.medpassplans.com/healthbird";

  static setBaseUrls() {
    const baseUrl = String.fromEnvironment("BASE_URL");
    const medpassUrl = String.fromEnvironment("MEDPASS_URL");
    const zocdocBaseUrl = String.fromEnvironment("ZOCDOC_URL");
    const zocdocAuthBaseUrl = String.fromEnvironment("ZOCDOC_AUTH_URL");
    healthbirdUrl = baseUrl;
    _medpassBaseUrl = medpassUrl;
    zocDocUrl = zocdocBaseUrl;
    zocdocAuthUrl = zocdocAuthBaseUrl;
  }
}

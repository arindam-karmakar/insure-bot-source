enum InsuranceType { health, vehicle, gadget }
enum ServiceArea { indiaOnly, international }

class IBPolicy {
  String policyName, provider, payIn, details, insuranceType, term, serviceArea;
  double price;

  IBPolicy({
    required this.policyName,
    required this.provider,
    required this.insuranceType,
    required this.term,
    required this.payIn,
    required this.serviceArea,
    required this.price,
    required this.details,
  });
}

List<IBPolicy> allPolicies = [
  IBPolicy(
    policyName: "HBenefit+ 1Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "India Only",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 2Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "International",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 3Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "India Only",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 5Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "International",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 1Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "India Only",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 2Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "International",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 3Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "India Only",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 5Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "International",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 1Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "India Only",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 2Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "International",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 3Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "India Only",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 5Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "International",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 1Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "International",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 2Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "India Only",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 3Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "International",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "HBenefit+ 5Y",
    provider: "Any",
    insuranceType: "Health Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "India Only",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 1Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "International",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 2Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "India Only",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 3Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "International",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "VehiclePro 5Y",
    provider: "Any",
    insuranceType: "Vehicle Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "India Only",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 1Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "1 year",
    payIn: "At Once",
    serviceArea: "International",
    price: 659.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 2Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "2 years",
    payIn: "Monthly",
    serviceArea: "India Only",
    price: 599.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 3Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "3 years",
    payIn: "Quarterly",
    serviceArea: "International",
    price: 499.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
  IBPolicy(
    policyName: "Gadget+ 5Y",
    provider: "Any",
    insuranceType: "Gadget Insurance",
    term: "5 years",
    payIn: "Yearly",
    serviceArea: "India Only",
    price: 459.0,
    details:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae nibh lobortis, porttitor ipsum sed, molestie diam. Phasellus vel mattis nibh, sed venenatis quam. Vivamus eget elit facilisis, ullamcorper tellus vitae, interdum lacus. Donec in ligula porttitor, rutrum dolor quis, posuere lacus. Fusce condimentum erat mauris, at iaculis ipsum molestie vel. Nam in ex orci. Nam ipsum mi, gravida quis molestie non, sagittis ac nunc. Etiam laoreet nunc id justo pretium, eu egestas nibh semper. Quisque at leo commodo, aliquam arcu a, faucibus magna. Integer molestie turpis maximus, scelerisque metus ac, eleifend eros. Cras tincidunt dignissim rutrum. Integer placerat vestibulum risus sit amet semper. Proin vitae tortor gravida sem suscipit accumsan sed fermentum lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ),
];

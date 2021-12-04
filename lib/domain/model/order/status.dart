


class Status {
  final String name;
  final String status;
  final String? packed_status;
  final String? fulfillment_status;
  final String? composite_fulfillment_status;

  Status(this.name, {required this.status, this.packed_status, this.fulfillment_status,
      this.composite_fulfillment_status});
}
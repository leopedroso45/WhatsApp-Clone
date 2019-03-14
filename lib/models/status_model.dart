class StatusModel {
  final String title;
  final String description;
  final String photoSrc;

  StatusModel({this.title, this.description, this.photoSrc});
}

StatusModel meWithoutStatus = new StatusModel(
  title: "Meu Status",
  description: "Toque para adicionar atualizações...",
  photoSrc: "https://sm.ign.com/ign_br/screenshot/default/biografia-history-darth-vader-star-wars_k83n.jpg"
);
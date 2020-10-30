class Status {
  final String fromUser;
  final bool isRead;
  final String receievedTime;
  final String image;

  const Status({this.fromUser, this.isRead, this.receievedTime, this.image});
}

const STATUS_DATA = const [
  Status(
    fromUser: 'Akhila',
    isRead: true,
    receievedTime: '6 minutes',
    image: 'assets/images/bike.jpg'
  ),
  Status(
    fromUser: 'Akash',
    isRead: true,
    receievedTime: '13:11',
    image: 'assets/images/bike.jpg'
  ),
    Status(
    fromUser: 'Mom',
    isRead: true,
    receievedTime: '13:08',
    image: 'assets/images/food.jpg'
  ),
    Status(
    fromUser: 'chris',
    isRead: true,
    receievedTime: '11:07',
    image: 'assets/images/love.jpg'
  )
];

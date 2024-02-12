# DeadSimpleChat Flutter SDK Example

This project demonstrates the integration of the DeadSimpleChat SDK into a Flutter application. It showcases how to incorporate real-time chat functionalities within your Flutter app using the DeadSimpleChat SDK.

## Features

- Real-time messaging
- Room-based chats
- User authentication and room joining
- Fetching message history
- Listing active channels

## Getting Started

To run this example, you will need Flutter installed on your machine. Clone the repository, navigate to the project directory, and follow these steps:

1. **Install Dependencies**: Run `flutter pub get` to install the necessary packages.
2. **Setup DeadSimpleChat**: Ensure you have a DeadSimpleChat account. Replace the `roomId` and `publicKey` in the `lib/main.dart` file with your credentials from the DeadSimpleChat dashboard.
3. **Run the App**: Execute `flutter run` to build and run the app on your device or emulator.

## Usage

The app demonstrates basic functionalities of the DeadSimpleChat SDK:

- **Connect**: Establishes a connection with the DeadSimpleChat server.
- **Join Room**: Joins a chat room using a unique user identifier.
- **Logout**: Logs the user out of the chat session.
- **Get Messages**: Fetches the message history of the joined room.
- **Get Channels**: Lists all active channels the user is part of.

## Customization

You can customize the chat experience by modifying the `DeadSimpleChat` widget properties in `lib/main.dart`. Explore the DeadSimpleChat SDK documentation for more customization options and advanced features.

## Support

For issues, questions, or contributions, please refer to the official DeadSimpleChat SDK documentation or contact their support team.

## License

This example is provided under the MIT License. See LICENSE for more details.

Happy coding!

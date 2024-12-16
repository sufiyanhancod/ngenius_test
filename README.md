# Ngenius Payment Integration

A Flutter project demonstrating the integration of Ngenius Payment Gateway.

## Overview

This project showcases the implementation of Ngenius payment gateway in a
Flutter application, allowing secure payment processing for both Android and iOS
platforms.

## Features

- Secure payment processing
- Multiple payment methods support
- Transaction status tracking
- Payment history
- Error handling
- Responsive UI

## Prerequisites

Before running this project, ensure you have the following:

- Flutter SDK (version X.X.X or higher)
- Dart SDK (version X.X.X or higher)
- Ngenius API credentials
  - API Key
  - Outlet Reference ID
  - Access Token

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ngenius_test.git
   ```

2. Navigate to project directory:
   ```bash
   cd ngenius_test
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

4. Configure environment variables:
   - Create a `.env` file in the root directory
   - Add your Ngenius credentials:
     ```
     NGENIUS_API_KEY=your_api_key
     NGENIUS_OUTLET_REF=your_outlet_ref
     ```

## Project Structure

```
lib/
├── config/
│   ├── api_config.dart
│   └── environment.dart
├── models/
│   ├── payment_request.dart
│   └── payment_response.dart
├── services/
│   └── payment_service.dart
├── screens/
│   ├── payment_screen.dart
│   └── payment_status_screen.dart
└── main.dart
```

## Usage

1. Initialize payment service:

```dart
final paymentService = NgeniusPaymentService(
  apiKey: 'your_api_key',
  outletRef: 'your_outlet_ref',
);
```

2. Create payment request:

```dart
final request = PaymentRequest(
  amount: 100.0,
  currency: 'AED',
  reference: 'ORDER_123',
);
```

3. Process payment:

```dart
final response = await paymentService.processPayment(request);
```

## API Integration

### Payment Flow

1. Create Order
2. Get Payment URL
3. Handle Payment Response
4. Verify Transaction Status

### Error Handling

The application handles various error scenarios:

- Network errors
- Invalid credentials
- Transaction failures
- Session timeouts

## Testing

Run tests using:

```bash
flutter test
```

### Test Cards

Use these test cards for development:

- Visa: 4111 1111 1111 1111
- Mastercard: 5555 5555 5555 4444
- Expiry Date: Any future date
- CVV: Any 3 digits

## Deployment

1. Android:
   ```bash
   flutter build apk --release
   ```

2. iOS:
   ```bash
   flutter build ios --release
   ```

## Security Considerations

- All sensitive data is encrypted
- API keys are stored securely
- SSL pinning is implemented
- Payment data is not stored locally

## Troubleshooting

Common issues and solutions:

1. Payment Declined: Verify test card details
2. Network Error: Check internet connection
3. Invalid Credentials: Verify API keys

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file
for details.

## Support

For support, email: your.email@example.com

## Acknowledgments

- Ngenius Payment Gateway
- Flutter Team
- Contributors

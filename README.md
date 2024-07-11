# ASP.NET Web Form Validation Example

This project demonstrates how to create a simple ASP.NET web form (`Validation.aspx`) with validation controls for name, email, and phone number inputs.

## File Structure

- **Validation.aspx**: Contains the main HTML markup and ASP.NET controls for the form.
- **Validation.aspx.cs**: Code-behind file where server-side logic is implemented.

### Form Fields

1. **Name**
   - Uses a `TextBox` (`nameTextBox`) with a `RequiredFieldValidator` (`nameRequiredFieldValidator`) to ensure the field is not left empty.

2. **Email**
   - Uses a `TextBox` (`emailTextBox`) with `TextMode="Email"` for email input.
   - Includes a `RequiredFieldValidator` (`emailRequiredFieldValidator`) to ensure the field is not left empty.
   - Uses a `RegularExpressionValidator` (`emailRegularExpressionValidator`) to validate the email format using a regular expression.

3. **Phone**
   - Uses a `TextBox` (`phoneTextBox`) with `TextMode="Phone"` for phone number input.
   - Includes a `RequiredFieldValidator` (`phoneRequiredFieldValidator`) to ensure the field is not left empty.
   - Uses a `RegularExpressionValidator` (`phoneRegularExpressionValidator`) to validate the phone number format using a regular expression.

### Submit Button

- A `Button` (`submitButton`) is provided to submit the form.

### Output Label

- A `Label` (`outputLabel`) is hidden (`Visible="False"`) initially, which can be used to display a success message upon form submission.

## Validation Controls

- **RequiredFieldValidator**: Ensures that the user enters a value in the required fields.
- **RegularExpressionValidator**: Validates the format of the entered data (email and phone number) using regular expressions.

## How to Run

1. Clone or download the project files.
2. Open in Visual Studio (or your preferred IDE for ASP.NET development).
3. Build and run the project to see the web form in action.

## Notes

- Make sure to adjust the regular expressions (`ValidationExpression` properties) in the `RegularExpressionValidator` controls as per your specific requirements for email and phone number formats.
- Customize error messages (`ErrorMessage` properties) as needed for clarity.

This example provides a basic setup for form validation in ASP.NET, ensuring data integrity and user-friendly validation feedback.

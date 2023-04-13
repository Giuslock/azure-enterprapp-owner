# azure-enterprapp-owner

This PowerShell script retrieves the owner of all Enterprise Apps in an Azure AD tenant and outputs the results to a CSV file.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Supported Resources](#supported-resources)
- [Output Format](#output-format)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before using this script, you need to have the following:

- PowerShell 5.0 or later
- The `Connect-AzureAD` cmdlet
- An Azure AD tenant with Enterprise Apps

## Usage

1. Open PowerShell ISE or your favorite PowerShell editor.
2. Open the `enterprapp-owners.ps1` script.
3. Run the script.
4. Wait for the script to complete.
5. The results will be saved to a CSV file named `enterprise_apps_owners.csv` in the same directory as the script.

## Supported Resources

This script supports the following resources:

- Enterprise Apps

## Output Format

The output file will have the following columns:

- `Owner`: the display name of the owner of the Enterprise App
- `Object Id`: the Object Id of the Enterprise App
- `Object Type`: the type of the Enterprise App
- `App Id`: the App Id of the Enterprise App
- `Available To Other Tenants`: whether the Enterprise App is available to other tenants
- `Display Name`: the display name of the Enterprise App
- `Homepage`: the homepage of the Enterprise App
- Other columns may be present depending on the properties of the Enterprise App.

## Contributing

If you'd like to contribute to this project, please open an issue or submit a pull request on the [GitHub repository](https://github.com/Giuslock/azure-enterprapp-owner).

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the LICENSE file for details.

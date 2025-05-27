<img src="./banner.png" width="100%">

# Agriculture Supply Chain Data Warehouse

<img src="https://cdn.agclassroom.org/media/uploads/LP838/Food-Supply-Chain.png"/>

## Overview
This repository contains a comprehensive data warehouse solution for managing and analyzing agricultural supply chain data. The project aims to provide insights into the entire agricultural supply chain process, from production to distribution, enabling better decision-making and optimization of agricultural operations.

## Features
- **Data Integration**: Consolidates data from multiple sources in the agricultural supply chain
- **Data Modeling**: Implements a robust dimensional model for efficient querying and analysis
- **ETL Processes**: Automated data extraction, transformation, and loading procedures
- **Analytics Ready**: Structured data warehouse optimized for business intelligence and analytics

## Getting Started

### Prerequisites
- Python 3.x
- PostgreSQL (or your preferred database system)
- Required Python packages (listed in requirements.txt)

### Installation
1. Clone this repository
```bash
git clone [repository-url]
```

2. Install required dependencies
```bash
pip install -r requirements.txt
```

3. Set up your database configuration in the appropriate configuration files

## Data Warehouse Architecture
The data warehouse follows a dimensional modeling approach with the following key components:

- **Fact Tables**: Store measurable business events and transactions
- **Dimension Tables**: Contain descriptive attributes for analysis
- **Staging Area**: Temporary storage for raw data before transformation
- **Data Marts**: Subject-specific data subsets for different business areas

## Usage
Detailed usage instructions and documentation can be found in the respective directories:
- Check `Final/scripts/` for ETL process documentation
- Review `Final/schema/` for database schema details
- Explore `Mission/` directories for development phase documentation

## Contributing
This project is maintained by Kelompok 13. For any contributions or suggestions, please follow these steps:
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License
This project is licensed under the MIT License - see the LICENSE file for details

## Contact
For any questions or support, please contact the project maintainers.

---
*Last updated: [Current Date]*
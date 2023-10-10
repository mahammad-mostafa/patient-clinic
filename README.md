<a name="title"></a>

<!-- TITLE -->

# 🏷️ Patient Clinic

This is the second project of the fourth module in the **Microverse** program.
<br/>
Check the below contents for further details about this project.

<!-- CONTENTS -->

# 📗 Contents

- [Description](#description)
- [Instructions](#instructions)
- [Authors](#authors)
- [Future](#future)
- [Contributions](#contributions)
- [Support](#support)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- DESCRIPTION -->

<a name="description"></a>

# 📖 Description

This repository includes a file called `schema_based_on_diagram` with plain `SQL` that can be used to recreate a database

📌 **Tech Stack:**
- Database built with `PostgreSQL`
- Queries uses `SQL`

📌 **Key Features:**
- Table for patients information which include (name / birth date)
- Each patient is linked with the medical history table through foreign key patient_id
- Table for medical histories information which include (admission / status)
- Table for invoices information which include (amount / creation / payment)
- Each invoice is linked with the medical history table through foreign key invoice_id
- Table for invoice items information which include (price / quantity / total)
- Each invoice item is linked with the (medical history / treatment) tables through foreign keys (invoice_id / treatment_id)
- Table for treatments information which include (type / name)
- Join table named histories treatments for bridging between dical histories & treatments tables
- All foriegn keys are indexed for optimizing queries performance

<p align="right"><a href="#title">back to top</a></p>

<!-- INSTRUCTIONS -->

<a name="instructions"></a>

# 🛠️ Instructions

You can easily download or fork this repository and work on it immadiately!

📌 **Prerequisites:**
- `PostgreSQL` or any other `SQL` database

📌 **Installation:**
- Create a new database called `patient_clinic`
- Run queries in [schema_based_on_diagram.sql](schema_based_on_diagram.sql) for creating all tables

<p align="right"><a href="#title">back to top</a></p>

<!-- AUTHORS -->

<a name="authors"></a>

# 👥 Authors

📌 **Mahammad:**
- [GitHub](https://github.com/mahammad-mostafa)
- [Twitter](https://twitter.com/mahammad_mostfa)
- [LinkedIn](https://linkedin.com/in/mahammad-mostafa)

📌 **Carlos:**
- [GitHub](https://github.com/CarlosZ96)

📌 **Austin:**
- [GitHub](https://github.com/stino-x)

<p align="right"><a href="#title">back to top</a></p>

<!-- FUTURE -->

<a name="future"></a>

# 🔭 Future

Some additional features I may implement in the project:
- [ ] Using `Binary` data types in tables
- [ ] Implement stored procedures like `SQL Trigger`

<p align="right"><a href="#title">back to top</a></p>

<!-- CONTRIBUTIONS -->

<a name="contributions"></a>

# 🤝🏻 Contributions

Wish to contribute to this project?
<br/>
Contributions, issues, and feature requests are more than welcome!
<br/>
Feel free to check the [issues](../../issues) page too.

<p align="right"><a href="#title">back to top</a></p>

<!-- SUPPORT -->

<a name="support"></a>

# ⭐️ Support

Like this project? Show your support by starring!

<p align="right"><a href="#title">back to top</a></p>

<!-- ACKNOWLEDGEMENTS -->

<a name="acknowledgements"></a>

# 🙏🏻 Acknowledgements

I thank everyone at **Microverse** for guiding me through this project.

<p align="right"><a href="#title">back to top</a></p>

<!-- LICENSE -->

<a name="license"></a>

# 📝 License

This project is [MIT](LICENSE.md) licensed.

<p align="right"><a href="#title">back to top</a></p>
<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🔭 Project Presentation](#project-presentation)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget Tracker <a name="about-project"></a>

> A web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://getbootstrap.com/docs/5.2/getting-started/introduction/">Bootstrap</a></li>
    <li><a href="https://www.javascript.com/">JavaScript</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[authentication system to allow login and registration]**
- **[list categories of items you spend on]**
- **[list transactions for a specific category]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Project Presentation <a name="project-presentation"></a>
- [Video](https://www.loom.com/share/2b85199bd38f4a72a190b82c99fd5d52)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Live Demo <a name="live-demo"></a>
- [BudgetTracker](https://rails-n39a.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need followed installed on your computer:
- Ruby v3+, 
- Rails v7+ 
- PostgreSQL
- An IDE e.g [Visual studio code](https://code.visualstudio.com/).
- [A terminal](https://code.visualstudio.com/docs/terminal/basics).

### Setup

Clone this repository to your desired folder or download the Zip folder:

```
git clone https://github.com/devMunyi/Recipe-App
```

- Navigate to the location of the folder in your machine:

**`you@your-Pc-name:~$ cd Recipe-App`**

### Install

To install all dependencies, run:

```
bundle install
```
### Database Setup
- Create .env file and add database credentials(be sure to replace with your details):
```
DB_HOST='localhost'
DB_USERNAME='your_postgress_username'
DB_PASSWORD='your_postgress_password'
```
- Then run the following command:
```
rails db:create db:migrate
```

### Usage

To run the project, follow these instructions:

- After Cloning this repo to your local machine.
- To get it running on your machine, you may open the project on your IDE and open the terminal
- On the terminal you can run:

```
rails s OR rails server
```
- After, you can follow along the app and run the appropriate option from navsigations to interact with it.

### Run tests

- To run rubcop tests, run the following command:

```
rubocop
```

- To run rspec tests, run the following command:

```
rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👤 Authors <a name="authors"></a>

👤 **Samuel Munyi**

- GitHub: [@devMunyi](https://github.com/devMunyi)
- LinkedIn: [Samuel Munyi](https://www.linkedin.com/in/samuel-munyi)
- Twitter: [@munyi_sam](https://twitter.com/munyi_sam)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Implement more methods and features.**
- [ ] **Improve the UI.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project and how I managed to build it!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- The original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
- Project from [Microverse](https://bit.ly/MicroverseTN) Ruby on Rails module.
- Thanks to the Microverse team for the great curriculum.
- Thanks to the Code Reviewer(s) for the insightful feedbacks.
- A great thanks to My coding partner(s), morning session team, and standup team for their contributions.
- Hat tip to anyone whose code was used.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Can I fork and reuse the repository**

  - Yes please, feel free.

- **Can I improve the repository, and my changes will be accepted if they are good?**

  - Yes please, nice ideas are welcome, please.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

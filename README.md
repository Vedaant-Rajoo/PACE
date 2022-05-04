<div id="top"></div>


[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Vedaant-Rajoo/PACE">
  </a>

<h3 align="center">Parallel Circuit Correctness Engine (PACE)</h3>

  <p align="center">
    Library for evaluating the correctness of arithmetic circuits in Non-Interactive Zero knowledge Proofs
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project


The notion of ‘zero knowledge’ was first proposed in the 1980s by MIT researchers Shafi Goldwasser, Silvio Micali and Charles Rackoff. These researchers were working on problems related to interactive proof systems, theoretical systems where a first party (called a ‘Prover’) exchanges messages with a second party (‘Verifier’) to convince the Verifier that some mathematical statement is true.
But in the interactive part of the process, there has to be a trust between the entities for it to be actually safe. So in the recent times there has been a lot of research in the field of Non-Interactive proof systems that require no interaction between the entities keeping trust out of the equation.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* C++
* Elliptical Curves and Fields
* Fast Fourier Transforms


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

There are two ways to setup this library.

### Setup

If you're on Ubuntu Distro then you can setup the pre-requisites using the local makefiles (make sure to run it with `sudo`)
* Ubuntu
  ```sh
  cd /path/to/directory
  sudo make
  ```
For the below setup instructions, you need `docker` installed on your machine. [Instructions for installing Docker](https://docs.docker.com/get-docker/).
* Docker
  ```sh
  docker build -t pace .
  sudo make
  ```

### Installation

1. Get a free API Key at [https://example.com](https://example.com)
2. Clone the repo
   ```sh
   git clone https://github.com/Vedaant-Rajoo/PACE.git
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Enter your API in `config.js`
   ```js
   const API_KEY = 'ENTER YOUR API';
   ```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [ ] Feature 1
- [ ] Feature 2
- [ ] Feature 3
    - [ ] Nested Feature

See the [open issues](https://github.com/Vedaant-Rajoo/PACE/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Your Name - [@iamnewedia](https://twitter.com/iamnewedia) - email@email_client.com

Project Link: [https://github.com/Vedaant-Rajoo/PACE](https://github.com/Vedaant-Rajoo/PACE)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Vedaant-Rajoo/PACE.svg?style=for-the-badge
[contributors-url]: https://github.com/Vedaant-Rajoo/PACE/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Vedaant-Rajoo/PACE.svg?style=for-the-badge
[forks-url]: https://github.com/Vedaant-Rajoo/PACE/network/members
[stars-shield]: https://img.shields.io/github/stars/Vedaant-Rajoo/PACE.svg?style=for-the-badge
[stars-url]: https://github.com/Vedaant-Rajoo/PACE/stargazers
[issues-shield]: https://img.shields.io/github/issues/Vedaant-Rajoo/PACE.svg?style=for-the-badge
[issues-url]: https://github.com/Vedaant-Rajoo/PACE/issues
[license-shield]: https://img.shields.io/github/license/Vedaant-Rajoo/PACE.svg?style=for-the-badge
[license-url]: https://github.com/Vedaant-Rajoo/PACE/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/vedaant-rajoo
[product-screenshot]: images/screenshot.png

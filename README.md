<div id="top"></div>


[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
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
  <p>
  <b>
    Project Submission from Vedaant Rajoo & Aditya Gupta
    </b>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## About The Project


The notion of ‘zero knowledge’ was first proposed in the 1980s by MIT researchers Shafi Goldwasser, Silvio Micali and Charles Rackoff. These researchers were working on problems related to interactive proof systems, theoretical systems where a first party (called a ‘Prover’) exchanges messages with a second party (‘Verifier’) to convince the Verifier that some mathematical statement is true.
But in the interactive part of the process, there has to be a trust between the entities for it to be actually safe. So in the recent times there has been a lot of research in the field of Non-Interactive proof systems that require no interaction between the entities keeping trust out of the equation.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* C++
* Elliptical Curves and Fields
* Fast Fourier Transforms
* BOOST


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

There are two ways to setup this library.

### Setup (Build Instructions)

If you're on Ubuntu Distro then you can setup the pre-requisites using the local makefiles (make sure to run it with `sudo`)
* Ubuntu
  ```sh
  cd /path/to/directory
  sudo make
  ```
For the below setup instructions, you need `docker` installed on your machine. [Instructions for installing Docker](https://docs.docker.com/get-docker/).
* Docker
  ```sh
  make docker
  ```
  Now you're in the docker container as a root. Following commands are run inside the container.
  ```sh
  cd PACE/build 
  ```

### Library Operations

1. There are two different opeartions in PACE.

#### Tests
After succesfully building the library. We can run the unit tests written in boost which will check if the build was perfect or not. In the `build` directory of the library you can run.
```sh
  make check
```
It checks the provers code and the verifiers code with sample input and output data.

#### Profile Data
After running the check you can test the library using the profiling code provided which runs the circuit evaluation on variable batch data with 1,2,4,8 threads simultaneously and then logs and stores the plot in the `src/profiling` directory.
To run this automated code you need to run the executable created when building the library.
In the root directory of the library run:
```sh
./profile
```
**This may take an upwards of 30-40 mins for the whole execution to complete.**

#### CleanUp
To cleanup all the build files and all the dependency libraries installed run:
```sh
make clean
```
All `make` commands should be run on your local terminal. Make sure that commands that are run inside a container have been specifically mentioned above.

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

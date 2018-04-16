# Exploring Lego Bricks
> Adapted from [Exploring 67 years of LEGOs](https://www.datacamp.com/projects/10) DataCamp project

## Project Description

The Rebrickable database includes data on every LEGO set that ever been sold;
the names of the sets, what bricks they contain, what color the bricks are, etc.
It might be small bricks, but this is big data!

In this project, you will get to explore the Rebrickable database.
To do this you need to know your way around `pandas` dataframes.

### Introduction

![lego-bricks](src/img/lego-bricks.jpeg)

Everyone loves Lego (unless you ever stepped on one). Did you know by the way that "Lego" was derived from the Danish phrase leg godt, which means "play well"? Unless you speak Danish, probably not.

In this project, we will analyze a fascinating dataset on every single lego block that has ever been built!


### Quickstart

To get started, first clone the repository to your local computer:

**Windows**:

Note: You must have [git](https://git-scm.com/download/win)
and [Python](https://www.python.org/downloads/release/python-364/) installed.

```PowerShell
New-Item -ItemType Directory -Force -Path "C:\codebase\github\HQYDataScienceClub"
Set-Location -Path "C:\codebase\github\HQYDataScienceClub"
git clone https://github.com/HQYDataScienceClub/ExploringLegoBricks.git
```

**MacOS**:
```PowerShell
mkdir -p ~/github/HQYDataScienceClub
cd ~/github/HQYDataScienceClub
git clone https://github.com/HQYDataScienceClub/ExploringLegoBricks.git
```

### Project Structure

Here is a high-level overview of the project structure:

```
ExploringLegoBricks
    ├─ data             <–– Data sets
    ├─ src              <–– Source code (where the code goes)
    |   ├─ lib          <–– Resource library (images)
    |   └── bricks.py
    └── README.md       <–– Project overview (you are here)
```

Here is a schema diagram of the datasets:

![schema](src/img/schema.png)

Now, head over to [src/bricks.py](src/bricks.py) and take a shot at the questions.

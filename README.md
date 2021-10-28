# LaTex-Templates
A repository including some useful templates for LaTex and my own class.

## Fancynotes Class
This class features some elements oriented to taking notes in Mathematics Lectures.

### Enviroments
There are three basic enviroments created with this [tutorial](https://texblog.org/2015/09/30/fancy-boxes-for-theorem-lemma-and-proof-with-mdframed/). Each one has its own abreviation to call it:
- Theorem (theo)
- Lemma (lem)
- Proof (prf)

The enviroment structure is the following:
```tex
\begin{env}[NAME]{LABEL}

\end{env}
```

For instance, the code
```tex
\begin{theo}[Pythagora's Theorem]{thm:1}
In every right triangle, the square of the hypotenuse is equal to the sum of the square of the catheti.
$$a^2+b^2=c^2$$
\end{theo}
```

Outputs the following:
 ![alt text](/Resources/theo2.png)

### Class Options

The class also features some language options for the package babel.

The options are the following:

| Option | Language | |
|---|---|---|
|ESP|Spanish| |
|ENG|English| |
|CAT|Catalan||

### Special commands

The class specifies some commands to make math typing easier.

#### Command for Roman numbers
The following command that outputs the desired roman number.
```
\rom{NUMBER}

```

## Fancynotes template

This template has the main settings for the Fancynotes class to work. There are some commented items, that you can set to your preferences.

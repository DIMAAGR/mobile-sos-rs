# [<](../../README.md) Arquitetura do Projeto

Este projeto segue os princípios fundamentais de arquitetura de software propostos por Robert C. Martin, também conhecido como Uncle Bob, em seu livro "Clean Architecture". No entanto, é importante ressaltar que a aplicação desses conceitos é flexível e adaptável às necessidades específicas deste projeto.

O conceito central da arquitetura limpa é a separação de preocupações e a manutenção da independência de camadas. Uncle Bob fornece uma estrutura geral como exemplo, mas reconhece a importância de adaptar a arquitetura de acordo com as particularidades de cada projeto.

Cada projeto tem suas próprias nuances e requisitos únicos. Portanto, a arquitetura deste projeto foi personalizada para atender às suas necessidades específicas. A flexibilidade é um dos pilares aqui, permitindo ajustes e otimizações conforme necessário.

O objetivo principal é manter o código limpo e flexível, facilitando a manutenção e evolução do projeto ao longo do tempo. A estrutura de pastas e a organização do código foram projetadas com esse propósito em mente. No entanto, encorajamos os colaboradores a sugerir melhorias e ajustes, garantindo que a arquitetura permaneça eficaz e adaptada às demandas em constante mudança.

------------------------------------------------------------------------------------------------------------------------

## Flutter Modular
O **APP NAME** é desenvolvido com o framework Flutter e utiliza o Flutter Modular como parte de sua estrutura de arquitetura. O Flutter Modular é um framework que facilita a organização e a modularização do código, permitindo a criação de aplicativos escaláveis e de fácil manutenção.

## Como o Flutter Modular é Usado
O Flutter Modular é utilizado para dividir o projeto em módulos independentes, cada um responsável por uma parte específica da aplicação, como autenticação de usuário, criação de roteiros, integração com APIs, entre outros. Isso permite uma melhor organização do código e uma separação clara de responsabilidades, facilitando o desenvolvimento e a manutenção do aplicativo.

## Injeção de Dependências com Flutter Modular
A injeção de dependências é uma prática essencial na construção de aplicativos escaláveis e de fácil manutenção. No **APP NAME**, utilizamos o Flutter Modular para realizar a injeção de dependências de forma simples e eficiente. Isso é feito por meio dos "binds", que mapeiam interfaces para suas implementações concretas, facilitando a troca de implementações e garantindo a modularidade do código.

------------------------------------------------------------------------------------------------------------------------

## Gerenciamento de Estado com MobX
Para o gerenciamento de estado no **APP NAME**, adotamos o MobX, uma biblioteca reativa que simplifica o processo de gerenciamento de estado em aplicativos Flutter. Com o MobX, podemos definir observáveis para os dados do aplicativo e reagir automaticamente a mudanças nesses dados, atualizando a interface do usuário de forma eficiente e sem boilerplate. Isso torna o desenvolvimento de interfaces dinâmicas e responsivas muito mais fácil e intuitivo.

------------------------------------------------------------------------------------------------------------------------



# DOCS
- [ABOUT CORE FOLDER](/docs/architecture/THE_CORE_FOLDER.md)
- [ABOUT MODULE FOLDER](/docs/architecture/THE_MODULE_FOLDER.md)
- [FOLDER ORGANIZATION](/docs/architecture/FOLDER_ORGANIZATION.md)


# Organização das Pastas
O **APP NAME** segue uma organização de pastas que favorece a escalabilidade, a modularidade e a clareza do código. Aqui está uma visão geral da estrutura de pastas:

**lib:** O diretório principal do projeto, contendo todo o código-fonte.
**src:** O diretório que contém todo o código-fonte do aplicativo.
**core:** O núcleo do aplicativo, contendo constantes, configurações e a lógica principal.
**modules:** Os módulos do aplicativo, cada um responsável por uma funcionalidade

**main.dart:** O ponto de entrada do aplicativo.
**main_app.dart:** O arquivo principal do componente MainApp.
**app_module.dart:** O módulo principal do aplicativo, responsável por configurar a injeção de dependências.

## Diretrizes e Observações

**Separação de Responsabilidades:** Cada pasta e módulo deve ter uma responsabilidade clara e única. Isso facilita a manutenção e a compreensão do código.
**Modularidade: Os módulos devem ser independentes e reutilizáveis. Eles devem poder ser facilmente adicionados, removidos ou substituídos conforme necessário.
**Injeção de Dependências:** A injeção de dependências é feita através do módulo principal (`app_module.dart`), garantindo uma configuração centralizada e fácil de gerenciar.
**Evite Aninhamentos Profundos:** Evite criar estruturas de pastas muito profundas, pois isso pode tornar o código difícil de navegar. Mantenha a estrutura de pastas o mais plana possível.
**Padrões de Nomeação:** Siga padrões de nomeação consistentes para arquivos e pastas, facilitando a localização e compreensão do código.

Essas diretrizes e exemplos devem ajudá-lo a organizar o projeto de forma eficiente e escalável, garantindo uma base sólida para o desenvolvimento contínuo do aplicativo.

## Organização das pastas

- lib
    - main.dart
    - src
        - core
            - consts
                -routes.dart
            - main_app
                - main_app.dart
        - module
            - app_module.dart
            - login
                - controllers
                    - login_controller.dart
                - views
                    - login_view.dart
                - widgets
                - login_module.dart
            - signup
                - controllers
                - views
                - widgets
                - signup_module.dart
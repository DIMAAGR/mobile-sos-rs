
# A Pasta do Módulo

O Flutter Modular é um framework que facilita a organização e a modularização do código em aplicativos Flutter. Uma das práticas recomendadas ao utilizar o Flutter Modular é organizar os módulos de forma a separar claramente as diferentes responsabilidades e componentes do aplicativo.

A pasta do módulo é onde toda a lógica específica do módulo é organizada. É importante manter esta pasta bem estruturada e organizada para facilitar a manutenção e a compreensão do código.

## Estrutura de Pastas Padrão

Aqui está a estrutura de pastas padrão que recomendamos para organizar os arquivos dentro da pasta do módulo:

- **controllers**: Esta pasta contém os controladores responsáveis pela lógica de apresentação e pela coordenação entre os casos de uso do módulo.
- **views (presentations)**: Contém os componentes visuais relacionados ao módulo, geralmente implementados como widgets de Flutter. O termo "views" foi escolhido pois é mais claro e simples de se entender que é onde estão as telas e componentes visuais, bem como as lógicas de apresentação associadas a eles..
- **widgets**: Esta pasta pode conter widgets específicos do módulo que podem ser reutilizados em várias telas.
- **data**: Contém as implementações concretas dos contratos definidos na camada de domínio. Inclui também a lógica de acesso a dados, como chamadas de API e manipulação de banco de dados.
- **domain**: Aqui estão definidas as entidades e os contratos (interfaces) que representam as regras de negócio e a lógica de domínio do módulo.


## Exemplo de Uso

Suponha que estamos criando um módulo de login para um aplicativo. A estrutura de pastas do módulo de login pode ser a seguinte:

- **login**
  - **controllers**: Contém o controlador de login, responsável por coordenar a interação entre a interface do usuário e os casos de uso.
  - **views (presentations)**: Contém os widgets de apresentação relacionados à autenticação, como telas de login e registro, bem como os controladores responsáveis pela lógica de apresentação.
  - **widgets**: Pode conter widgets específicos do módulo de login, como um campo de entrada de senha personalizado.
  - **data**: Inclui as implementações concretas dos contratos relacionados à autenticação, como um repositório remoto para autenticação via API.
  - **domain**: Define os contratos (interfaces) que representam as regras de negócio relacionadas à autenticação, como casos de uso para login e registro de usuários.

## Diretrizes de Organização

- **Separação de Responsabilidades**: Mantenha cada pasta focada em uma responsabilidade específica, como lógica de apresentação, regras de negócio ou acesso a dados.
- **Consistência de Nomenclatura**: Mantenha uma nomenclatura consistente para facilitar a localização e compreensão dos arquivos.
- **Modularidade**: Tente manter cada pasta o mais independente possível, para que possa ser facilmente reutilizada ou substituída.

Esta estrutura de pastas oferece uma maneira organizada e escalável de desenvolver módulos em um aplicativo Flutter Modular, facilitando a colaboração entre membros da equipe de desenvolvimento e a manutenção do código.

## Separação de Responsabilidades
Ao organizar os módulos, é importante separar claramente as diferentes responsabilidades e componentes do aplicativo. Uma abordagem comum é dividir os módulos em três categorias principais:

### 1. Controladores (Controllers)
Os controladores são responsáveis pela lógica de negócios e pela manipulação de dados dentro do aplicativo. Eles podem incluir a lógica de validação de formulários, a comunicação com serviços externos, o processamento de dados, entre outros.

#### Exemplo:

```dart
void _controllers(Injector injector) {
  injector.registerSingleton<MyController>(MyController());
}
```

### 2. Casos de Uso (Use Cases)
Os casos de uso representam as diferentes funcionalidades e recursos do aplicativo. Eles encapsulam a lógica de negócios específica de cada funcionalidade e podem ser reutilizados em diferentes partes do aplicativo.

#### Exemplo:

```dart
void _usecases(Injector injector) {
  injector.registerFactory<LoginUseCase>(() => LoginUseCase());
}
```

### 3. Componentes Gerais (General Components)
Os componentes gerais incluem widgets reutilizáveis, serviços compartilhados e outras funcionalidades que não se enquadram nas categorias de controladores ou casos de uso.

#### Exemplo:

```dart
void _general(Injector injector) {
  injector.registerSingleton<AuthService>(AuthService());
}
```

### Implementação nos Módulos
Para implementar essa organização nos módulos, podemos criar funções privadas dentro do módulo para configurar cada tipo de componente e, em seguida, chamá-las no método correspondente do módulo (como `binds` para binds e `routes` para rotas).

#### Exemplo:


**NOTA:** observe que, i significa injector.

```dart

import 'package:flutter_modular/flutter_modular.dart';
import 'package:APP_PROJECT_NAME/src/module/my_module/views/module_view.dart';

class MyModule extends Module {

  void _controllers(i) {
     // Configuração dos controladores
  }

  void _usecases(i) {
    // Configuração dos casos de uso
  }

  void _general(i) {
     // Configuração dos componentes gerais
  }

  @override
  void binds(i) {
    _controllers(i);
    _usecases(i);
    _general(i);
  }

  @override
  void routes(r) {
    // Configuração das rotas
    r.child(Modular.initialRoute, child: (ctx) => const ModuleView());
  }
}

```

Essa abordagem ajuda a manter o código do módulo organizado e legível, facilitando a manutenção e a colaboração entre membros da equipe de desenvolvimento.

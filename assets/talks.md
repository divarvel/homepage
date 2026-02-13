---
talks:
  - name: "Distributed auth: don’t give up"
    desc: A tour of distributed auth patterns, the associated challenges and how biscuit makes things easier
    featured: true
    years: "2023"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/devoxx-dist-auth.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=t9oGeFp4KLc&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Authn/Authz: a tale of cookies and tokens"
    desc: "A tour of authentication, authorization, relevant models and tooling"
    years: "2022"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/devfest-biscuit.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=8_-QGBMT7-k&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "« It’s traverse! »"
    desc: |
      The `traverse` function is so pervasive in functional programming that it became a joke:
      `traverse` is the new `42`.
      Since it's a bit abstract until you actually encounter it, let's dig a little and review
      some case where… well, it was _actually_ `traverse`.
    featured: true
    years: "2020"
    entries:
      - lang: en
        type: slides
        label: "DDDDD"
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/ddddd-its-traverse.html
      - lang: en
        type: slides
        label: "LambdaLille"
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/lambdalille-its-traverse.html
      - lang: en
        type: video
        label: "DDDDD"
        url: https://www.youtube.com/watch?v=sIJr3SCKhjo
      - lang: en
        type: video
        label: "LambdaLille"
        url: https://www.youtube.com/watch?v=qB_hDiQtrMo&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Application design with a stack of monads"
    desc: |
      Functional Programming is often seen as a nice tool for small-scale concerns, not as a tool for application design.
      However, functional programming comes with interesting tools aimed at solving these boring (or deemed boring) concerns:
      dependency inversion, observability).
      A functional solution, called a monad stack, allows to combine all this cross-cutting concerns and behaviours with no magic
      (or not too much). Let's see how it works and how it relates to the current "Tagless Final" trend
    years: "2019"
    entries:
      - lang: fr
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/ncrafts-monad-stacks.html
      - lang: en
        type: video
        url: https://www.youtube.com/watch?v=AWFw76Vl2NE
  - name: "Config as Code? Yup, but properly. Have some Dhall"
    desc: |
      Config files are getting bigger and bigger. Config languages are limited (by design). Using a general purpose language for config
      looks like a good idea but has severe drawbacks. Dhall is designed to bring flexibility and abstraction to config, while keeping
       key properties.
    featured: true
    years: "2019"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/web2day-dhall.html
      - lang: en
        type: video
        url: https://www.youtube.com/watch?v=sb4LRqJsYPc&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Dev environments: use the nix, Luke!"
    desc: |
      Spinning up dev environments got incredibly complex. We now cheat by using containers or VMs, but these are extremely heavyweight solutions.
      We only care about the easy way to run software, not about the runtime isolation. Thankfully, there is nix, that does just that: 
      allowing us to run software on your machine without trashing your global environment.
    years: "2019"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/devoxx-nix.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=v0NY2VNcoWU&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Hoist me up, before you lift lift"
    desc: |
      Servant allows you to describe and build web API is a type-safe and composable way. It also provides a powerful way
      to structure your applications by letting you choose a monad stack, either for the whole API or for specific parts of
      it. This mechanism, called `hoistServer` can be used eg. for dependency injection as well as access control.
    years: "2019"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/hoist-haskell-paris.html
  - name: "TDD as in Type-Driven Development"
    desc: |
      Test-Driven Development is widely accepted as good practice. But can we do better? By specifying your program's
      behaviour with types, you can go a very long way, with more confidence and with less hassle than with tests.
    years: "2015 - 2018"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/type-dd-devoxxfr.html
      - lang: en
        type: video
        url: https://www.youtube.com/watch?v=H8JXQPCvTw8&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=XhcgCF0xXRs&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Create a Rust CLI tool in a flash "
    desc: |
      "Tools not rules". A process without a tool to guide is mistakes waiting to happen.
    years: "2018"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/rust-cli-devoxxfr.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=1SV2jQkegAY&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Acknowledging boundaries"
    desc: |
      Get consistency back in your μServices architecture: the best way to reduce complexity in a μServices architecture is to embrace boundaries.
      You'll see how to do it with the help of proper design and a good type system.
    years: "2017"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/acknowledging-boundaries-devoxxfr.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=Daburx0jSvw&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=VmVQmC33UVM
  - name: "Haskell in production? In a startup? Yup"
    desc: |
      Haskell is trendy, but too often for side-projects. At Fretlink, they put haskell in production, on real projects.
    years: "2017"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/scala-io-haskell.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=yKA-hYZa2tQ&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "All my team is using rust. HALP!"
    desc: |
      Something strange happened at Clever Cloud: everybody has started using rust, little by little. Many greenfield projects are using rust.
      That's not to say we've stopped using scala, java, or ruby (and even a bit of go and haskell). As a CTO, how do I keep complexity and language diversity in check? How do I choose which language to use for projects? Do I let others choose?
    years: "2017"
    entries:
      - lang: fr
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/scala-io-rust.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=gH5mPaLU8_g&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Purescript, des sensations pures"
    desc: |
      Dans le monde du compile-to-js, il y a des langages proches (genre coffeescript),
      et des langages qui vont un peu plus loin (genre typescript). Et puis il y a purescript.
      Ce soir, on verra le pourquoi et le comment, avec la bibliothèque halogen, qui permet de créer des applications/interface graphiques.
    years: "2017"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/purescript-nantesjs.html
  - name: "Algebraic data types for fun and profit"
    desc: |
      As domain driven design practitioners, we have to design datastructures a lot. Often we have to encode our knowledge into a
      not-so-expressive type system. That's when the trouble starts: our types don't represent exactly what we have.
    years: "2016"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/adt-devoxx-be.html
      - lang: en
        type: video
        url: https://www.youtube.com/watch?v=EPxi546vVHI&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Beyond flux: going full cycle with functional reactive programming."
    desc: |
      React and flux have shown us how to design UI in a modular fashion. One of the core ideas, is that data should always flow in one direction.
      With this concept, it's easier to build applications from independent modules. I'll show what react core concepts are and how they allow developers to manage complexity in big applications.
    years: "2016"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/frp-full-cycle-ncrafts.html
      - lang: en
        type: video
        url: https://vimeopro.com/newcrafts/newcrafts/video/170129852
  - name: "Functional patterns for scala practitioners"
    desc: |
      Scala, by being both Functional and Object-Oriented is easy to get started with, especially for java developpers.
      However, to get the most of the language, you have to embrace its functional nature.
    years: "2016"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/fp-patterns-devoxx-be.html
      - lang: en
        type: video
        url: https://www.youtube.com/watch?v=iRGcbCvrtiw&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Tips and tricks for clean relational db schemas"
    desc: |
      It can be usual for software developers to let the ORM take care of the database schema. In many cases it's a
      bad idea as it makes the data stored in your database brittle and hard to use confidently.
      I'll show a few tricks which will help you cleanly store and query data by using your database engine to its full power.
    years: "2014"
    entries:
      - lang: en
        type: slides
        url: https://clementd-files.cellar-c2.services.clever-cloud.com/blog/tips-tricks-rdbms-geecon.html
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=-JOE8c0v84Q&list=PLgqACm4pzpkxFQDWtkArFtlgjnbFRW2nR
  - name: "Les sites statiques, une alternative aux CMS"
    desc: |
        Pour une certaine typologie de sites (blogs, sites vitrines), la génération de site statique est une alternative intéressante aux CMS traditionnels.
        Les bénéfices se font sentir en termes de sécurité, de performance et de workflow.
        Plusieurs approches de la génération de sites statiques existent, j'en aborderai une, la plus flexible, basée sur l'outil Hakyll.
        Je passerai en revue quelques cas d'utilisation et comment y répondre avec un générateur de site statique.
    years: "2013"
    entries:
      - lang: fr
        type: video
        url: https://www.youtube.com/watch?v=JBd9Gk2MFgo
  - name: "Survival guide: modern CSS for the grumpy backend developer"
    desc: |
      Backend programming sounds hard. But we all know what really strikes fear in the hearts of backend devs: CSS.
      Building a simple page layout is a daunting task: you need to juggle with floats, margins and all that sort of things.
      But what if I told you handling layout in CSS has improved dramatically? Or, Djikstra forbid, that it's now kind of easy?
      Let's see what we can do with flexbox and grid; I promise you you won't be scared of CSS layout anymore.
---

Over the years, I have been lucky enough to give a few talks, mostly about functional programming and software architecture.

They are listed below, along with slides and videos.

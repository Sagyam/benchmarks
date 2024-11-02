# Steps for compiling and tracing the code

## C with GCC
    
```bash
gcc ./src/c/c.c -o ./src/c/c-gcc
strace -c -o ./traces/c-gcc-traces.txt ./src/c/c-gcc
strace -c ./src/c/c-gcc
```

## C with Clang

```bash
clang ./src/c/c.c -o ./src/c-clang
strace -c -o ./traces/c-clang-traces.txt ./src/c-clang
strace -c ./src/c-clang
```

## Clojure (Needs Java installed)

```bash
strace -c -o ./traces/clojure-traces.txt clojure ./src/clojure/clojure.clj
strace -c clojure ./src/clojure/clojure.clj
```

## C++ with GCC

```bash
g++ ./src/cpp/cpp.cpp -o ./src/cpp/cpp-gcc
strace -c -o ./traces/cpp-gcc-traces.txt ./src/cpp/cpp-gcc
strace -c ./src/cpp/cpp-gcc
```

## C++ with Clang

```bash
clang++ ./src/cpp/cpp.cpp -o ./src/cpp/cpp-clang
strace -c -o ./traces/cpp-clang-traces.txt ./src/cpp/cpp-clang
strace -c ./src/cpp/cpp-clang
```

## C# with Dotnet
    
```bash
dotnet build ./src/csharp/csharp.csproj -o ./src/csharp/build
dotnet publish ./src/csharp/csharp.csproj -o ./src/csharp/publish
strace -c -o ./traces/csharp-traces.txt ./src/csharp/publish/csharp
strace -c ./src/csharp/publish/csharp
```

## Dart
```bash
dart compile exe ./src/dart/dart.dart -o ./src/dart/dart
strace -c -o ./traces/dart-traces.txt ./src/dart/dart
strace -c ./src/dart/dart
```

## Elixir
```bash
cd ./src/elixir
elixirc elixir.ex -o .
strace -c -o elixir-traces.txt elixir -e Elxir.hello
strace -c elixir -e Elxir.hello
cd ../..
```

## Erlang
```bash
cd ./src/erlang
erlc hello.erl
strace -c -o erlang-traces.txt erl - noinput -eval 'hello:greet(). ' -s init stop
strace -c erl - noinput -eval 'hello:greet().' -s init stop
cd ../..
``` 

# Go
```bash
strace -c -o ./traces/go-traces.txt go run ./src/go/go.go
strace -c go run ./src/go/go.go
```

# Groovy
```bash
groovy ./src/groovy/hello.groovy
strace -c -o ./traces/groovy-traces.txt groovy ./src/groovy/hello.groovy
strace -c groovy ./src/groovy/hello.groovy
```

# Haskell
```bash
ghc -o ./src/haskell/haskell ./src/haskell/haskell.hs
strace -c -o ./traces/haskell-traces.txt ./src/haskell/haskell
strace -c ./src/haskell/haskell
```

# Java
```bash
javac ./src/java/HelloWorld.java
strace -c -o ./traces/java-traces.txt java -cp ./src/java HelloWorld
strace -c java -cp ./src/java HelloWorld
```

# Node
```bash
strace -c -o ./traces/node-traces.txt node ./src/js/node/node.js
strace -c node ./src/js/node/node.js
```

# Deno
```bash
strace -c -o ./traces/deno-traces.txt deno run ./src/js/deno/deno.ts
strace -c deno run ./src/js/deno/deno.ts
```

# Bun
```bash
strace -c -o ./traces/bun-traces.txt bun run ./src/js/bun/bun.ts
strace -c bun run ./src/js/bun/bun.ts
```

# Julia
```bash
strace -c -o ./traces/julia-traces.txt julia ./src/julia/julia.jl
strace -c julia ./src/julia/julia.jl
```

# Lua
```bash
strace -c -o ./traces/lua-traces.txt lua ./src/lua/lua.lua
strace -c lua ./src/lua/lua.lua
```

# Nim
```bash
nim c -o:./src/nim/nim ./src/nim/nim.nim
strace -c -o ./traces/nim-traces.txt ./src/nim/nim
strace -c ./src/nim/nim
```

# Perl
```bash
strace -c -o ./traces/perl-traces.txt perl ./src/perl/perl.pl
strace -c perl ./src/perl/perl.pl
```

# PHP
```bash
strace -c -o ./traces/php-traces.txt php ./src/php/php.php
strace -c php ./src/php/php.php
```

# Python
```bash
strace -c -o ./traces/python-traces.txt python3 ./src/python/python.py
strace -c python3 ./src/python/python.py
```
# R
```bash
strace -c -o ./traces/r-traces.txt Rscript ./src/r/r.r
strace -c Rscript ./src/r/r.r
```

# Ruby
```bash
strace -c -o ./traces/ruby-traces.txt ruby ./src/ruby/ruby.rb
strace -c ruby ./src/ruby/ruby.rb
```

# Rust
```bash
rustc ./src/rust/rust.rs -o ./src/rust/rust
strace -c -o ./traces/rust-traces.txt ./src/rust/rust
strace -c ./src/rust/rust
```

# Scala
```bash
scalac ./src/scala/scala.sc -d ./src/scala
strace -c -o ./traces/scala-traces.txt scala -cp ./src/scala HelloWorld
strace -c scala -cp ./src/scala HelloWorld
```

# Swift
```bash
swiftc ./src/swift/swift.swift -o ./src/swift/swift
strace -c -o ./traces/swift-traces.txt ./src/swift/swift
strace -c ./src/swift/swift
```
# Zig
```bash
cd ./src/zig
zig build-exe zig.zig
strace -c -o zig-traces.txt zig
strace -c zig
cd ../..
```
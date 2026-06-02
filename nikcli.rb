# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-02T20:17:06.034Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.46.0/nikcli-ai-darwin-x64.zip"
      sha256 "9108f8d30f0c8540518f5bf2534efe9a7b40756adca97f12a1dd42d85df2914d"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.46.0/nikcli-ai-darwin-arm64.zip"
      sha256 "44e8ca47d279bf4814c4c0c6c453cf3a48ea9bdb7065477e8aef6ca23e9cf075"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.46.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "9fb463b09c8ff8a86c74a2ca9c532427c41e905fd136a3b9c65bbed5341b52ca"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.46.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "fa65cb4581d367bf9bf8634ce39f261975bebc150a9836a6967df395646ac3da"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


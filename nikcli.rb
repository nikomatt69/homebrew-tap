# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-22T15:45:23.084Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.387.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.387.0/nikcli-ai-darwin-x64.zip"
      sha256 "3e08661851b18f568debc209683bc19632f1a8a71d9316ce6242bed85fd6008c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.387.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8d1e69927abcb4a172a7c81eb6324b8f2655ad758d79fde4c061a7e71fb644bf"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.387.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "a07f4d1c4ecc1452b2e5dae96920dc25678d90a40cc24ff006ad7f24fce39394"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.387.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "debee745a8dc0fdbae0d776470159f6a718e7f0e75c62489f6172cca260663b6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-06T23:26:54.222Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.247.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.247.0/nikcli-ai-darwin-x64.zip"
      sha256 "634859090fc699f70d75910a8a1075bd27429ad64fe8b09bfa63f014b3439001"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.247.0/nikcli-ai-darwin-arm64.zip"
      sha256 "10852793c32ab479855ca00d33708b3cac7e7162cac06690b055aa557abaed36"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.247.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "41ebfbd4e1d305b4dd99ed1d87257c93627ea1a7694cd60b0523a5546ca98c96"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.247.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "6f05547d6319ee10f89b6a93d74b2ca9069c036607018a58cf793f06b6c312c9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


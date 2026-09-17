# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-17T21:52:21.563Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.368.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.368.0/nikcli-ai-darwin-x64.zip"
      sha256 "cd52d758d95bde47c202f4f414a057508aa3c0922915969bb8ebad335eb76bbf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.368.0/nikcli-ai-darwin-arm64.zip"
      sha256 "c7e050ab5006ccce0588d31aae9b49c4fca4c0c8e8eefab09f1a421c2030ec8a"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.368.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f8f8a9aeb529288241917b17c0f420b4b30f33b3639ffd2bb4245ff782d13d13"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.368.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "c8d228e757f035ae360196896577314ee21b15d6d2a7eb6a13b9f1e231551153"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


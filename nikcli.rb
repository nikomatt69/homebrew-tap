# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-11T21:16:24.883Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.271.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.271.0/nikcli-ai-darwin-x64.zip"
      sha256 "c88d2a897868723c52edd0c294dbcb0a6575e109d9e6adc3dba95f367e9e0ed4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.271.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7307d5eedd9712701d23dae3906f5005935e14dca5cd80ed5fd44995f979f92b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.271.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "dffa25023afcce96ad93b22b26e6e9f1d91e99fe8245108e7be7f92784412aed"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.271.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "bdc66b0af71fa59acb3506589504b69dd565c915d15941da948bd66d45db3aa2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


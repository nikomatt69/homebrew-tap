# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-22T02:24:56.142Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.190.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.190.0/nikcli-ai-darwin-x64.zip"
      sha256 "0108556aa4c1cc5cc27aea6468c7192bae4e3a981f319ddebbfe54169efeba31"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.190.0/nikcli-ai-darwin-arm64.zip"
      sha256 "ae38635b867992bcc2840c55875cc575545602885ee5b1da7ee61bfcfd6648d8"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.190.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2c0aec89008d6fd51448cbea86a1947e778d62519a566b9935f1258f92c1a97c"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.190.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "628e4160cec62ab425ce6197923b61e9b82fff28401abe0958eac8cadc60b74f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


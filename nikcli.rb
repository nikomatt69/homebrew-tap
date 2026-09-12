# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-12T17:13:23.928Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.349.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.349.0/nikcli-ai-darwin-x64.zip"
      sha256 "f1da87f6c8817905601634b111384fea9f406a1abda1533d08458e2351406041"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.349.0/nikcli-ai-darwin-arm64.zip"
      sha256 "7be972a0b012aa2de6918c197a7c77971168534a3a10a0ac8cc16a14db7e74fd"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.349.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5629619579dc0fc22316e4cfaca76b07b5acd1a8199a1f37c145adfe7b1b6bab"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.349.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "31c90bb02ba1e95492f6f210a953dcf7e3df118513485e8c24625ee4f8436289"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-06-02T00:57:31.913Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.45.0/nikcli-ai-darwin-x64.zip"
      sha256 "9cb25c469d8b27daee472fe2fb267bb603191ca0cb658103eef992c5e7e9f8f6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.45.0/nikcli-ai-darwin-arm64.zip"
      sha256 "335997d19a656e0ea7ab5302199bd2ce31c51bfb920e7249d44ca506ef26a58b"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.45.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "64c12f98803c77bb6ae94c65bd50f1d93ff35553deeac9be0b5c1c8e24413282"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.45.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "544918f88e8bab95f82f91ad1a4152fd3c45abd9187955e3f93f03db59bf50df"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


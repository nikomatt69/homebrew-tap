# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-24T22:17:34.691Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.394.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.394.0/nikcli-ai-darwin-x64.zip"
      sha256 "8eab28e2c01c4377d08ddeb09fcdfe0f9c3744ad4fdb51b04cacab4ff8e20df4"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.394.0/nikcli-ai-darwin-arm64.zip"
      sha256 "fd55298da261c680e6cb221bfd5b050a921e246326ebd0281c3c4077058bffb0"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.394.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "351185727d5ec0a102a2d2920ee1d72035121a8d6c25d353dbff1ee4bb4d69d6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.394.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "d169b99adf4067976c80ffb64a00abb07bb1b1962182baecbd908d6837bea0b9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


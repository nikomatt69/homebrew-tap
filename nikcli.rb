# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-08-01T12:34:39.290Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.222.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.222.0/nikcli-ai-darwin-x64.zip"
      sha256 "97dee25ee04e39b567998174d4046fc3a284e86eb1ea4870f02a93ca25be7978"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.222.0/nikcli-ai-darwin-arm64.zip"
      sha256 "65da9063154e64defadf7bf58f2ae05c0bec93b11ecddd726baeab13a9594075"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.222.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "142cf4611cd075f6faf407cf1ec58eb17eb1296795b82af4326be97e2605f8bf"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.222.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a154e3d3bb8bf6ce901123c0e23615bec0074dfc23e97417f0c50d9498a69370"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


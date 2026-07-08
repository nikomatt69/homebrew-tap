# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-08T01:29:35.350Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.148.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.148.0/nikcli-ai-darwin-x64.zip"
      sha256 "db69e85b3ab1bd0014032d23a2e0bf3640e96352b2f7c61d0db8f574792d5117"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.148.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a04a0ab6d783756a9af9ef54112195153dfc14cfedd003dbaa992060d6e6ecde"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.148.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "49d99c71178cd292bf11d3fd1d830703d4d263ffa9329bbadad8c24264c69af2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.148.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2272af6dcbc5940290491dd134b3f9b4e16a26c0cd4c91be4c0a4b5d22aef2e6"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


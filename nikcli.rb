# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-16T20:49:12.303Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.363.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.363.0/nikcli-ai-darwin-x64.zip"
      sha256 "87a8d68436ebdc4ed2011a1834df3b2cf9b289a41efbac2db9124b3de6ec1d2e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.363.0/nikcli-ai-darwin-arm64.zip"
      sha256 "a3d7e865f1aba2d335a216624467310e08828b9d9c4983205b283943992ab47d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.363.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "ed360b96dd40237b1649cc219178f40cad2bdbc7fbf32001469a6c7eb3904002"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.363.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "4f79eebe6518b724172fab02407fea78354121876e104ee5e9697588708306de"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-31T18:53:55.642Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.219.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.219.0/nikcli-ai-darwin-x64.zip"
      sha256 "2709bcb4fbbc6fcfc3f916424b1ec8057a122dc80662134cadde0e0a5edbe8da"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.219.0/nikcli-ai-darwin-arm64.zip"
      sha256 "8b39f74925e82b18c33e1482aa500a9a7b1e29b9d97c85ad04988885448e452d"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.219.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "59cddd927996b9995e7372440e6cebf29bc0468cec0c1b1298c9ef4242694255"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.219.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "09ee0c217de7c84d67d90a87b56f45a9163a8745ad3dbac770e071d3dacd67b5"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


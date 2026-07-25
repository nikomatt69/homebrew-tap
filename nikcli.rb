# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-25T00:13:02.988Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.204.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.204.0/nikcli-ai-darwin-x64.zip"
      sha256 "fde61fa22f876e822d1d7646e379a3e0617f7125e425a95f411531f9c527a2a2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.204.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5954c6ea2a948583206d4528b833de826d055e4299668c60d67c17cb4e903cf4"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.204.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "2ead63e9910673fa6628ff154002efa83bea1279fa039b98a1e18c876cda58f9"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.204.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ae31ca31d9bd750354303a0d73ac887218e7fe9746ae0254810163411bc31d0a"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


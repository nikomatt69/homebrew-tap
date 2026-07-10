# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-10T14:37:25.512Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.153.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.153.0/nikcli-ai-darwin-x64.zip"
      sha256 "9c97af7715aac9edd2e05b66455e343264571b6ad2d44b30f51d2238d957962f"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.153.0/nikcli-ai-darwin-arm64.zip"
      sha256 "b81a380f512ca444d95e1862ba5ed67dade6c0738c7c2f705716c19b93ad171c"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.153.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "1b0c54f40c9f85f00357d693ab59eb229de52699f661a23d1ca9ad82b478fa92"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.153.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "73485f613b0d4ef186463f8e46eb03763939fdb1038e95a2f6882be8a5723bf9"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


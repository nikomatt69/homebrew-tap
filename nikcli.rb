# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-24T21:44:19.814Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.26.0/nikcli-ai-darwin-x64.zip"
      sha256 "9c381670bf411514dc91e8be5fbf1b86b93b47adf4a309498de02706cbd1deeb"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.26.0/nikcli-ai-darwin-arm64.zip"
      sha256 "6b9fbe5ca72e210b0f1082bd9b87eaea614c42c54d2d668d6b879bf839de0214"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.26.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "23bafd8a8e3e00a1edc2d43c33c7af19f82be9a297c8c430a1abc7ef94e286f6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.26.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "0cd02ff79ac502b9d86ff256015b6a2a3c0273626001573d0f5fe792287cd1d1"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


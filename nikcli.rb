# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-24T20:20:21.353Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.201.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.201.0/nikcli-ai-darwin-x64.zip"
      sha256 "3c15515e89520829ac39dc80c6ec688eebb5996e4ba7e35056470226c65705aa"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.201.0/nikcli-ai-darwin-arm64.zip"
      sha256 "025c48adb18f21fa4c2e885781fbd40b0ec2b4521b33b177323875fb9c6c0499"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.201.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "f2f1067d8a12a1226d5367780b8e9b77bb54250590c53d9536b93ecf7d7a58d6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.201.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "f8dac1ddd79a443389869bc76c84c542d49b584527943dca20e27369c9db6ad2"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


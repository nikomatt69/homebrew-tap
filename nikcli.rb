# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-30T20:09:26.899Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.215.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.215.0/nikcli-ai-darwin-x64.zip"
      sha256 "a1c874f3c081ef014e055aad962311075a71563a55ea6a3f38e226e3a25e335e"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.215.0/nikcli-ai-darwin-arm64.zip"
      sha256 "1aadd04921da58be0b37ac84e80a6c4df49aa73d76b9eccec41e6ef496844a01"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.215.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "8cee54323405f0828eac4c2e9367b42b6198454236f269405082d915947a7b54"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.215.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "dbdbc6fe22c15b01fa268c3f388b513071c8de6cf8fb45e5f71f0d1c6f356cae"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


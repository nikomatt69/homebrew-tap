# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-27T19:16:06.170Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.205.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.205.0/nikcli-ai-darwin-x64.zip"
      sha256 "4cbb134379c45dad7ddd42953cb044ab1579becc1093b0724738783e46afdba8"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.205.0/nikcli-ai-darwin-arm64.zip"
      sha256 "88170cafd1e8c06b40ae080a12418cb7e2a622b85ae19068838e338f78b53546"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.205.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "5e4bea42085e2a432a86ab5ddfe85cf7c7d33344673dfee3111a76274e16f0d5"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.205.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "1ad10a6d80d573e16e74a6c4249f11756a6932dcd4df102ca977055e888dd559"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-07-09T20:25:01.088Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.149.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.149.0/nikcli-ai-darwin-x64.zip"
      sha256 "d024f7ed03f0cf901fc0c8fdddfce794078934b3ff76a60ccb58fd7f107772ad"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.149.0/nikcli-ai-darwin-arm64.zip"
      sha256 "eb1b183fb77c291da6bd1e309060520b5133ba0e2bb4d9cce5eebbaba4abd5ad"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.149.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "99cd86027d2912e1045bd4178ecd1b788e8bd3ace3af75e01fea851eaca07f1a"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.149.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "3f63a29a07f7fc8d56935f1af066b8eea56ef5cdcc72fb9de473bf2db3836c2f"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


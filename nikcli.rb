# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-10T14:38:41.680Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.337.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.337.0/nikcli-ai-darwin-x64.zip"
      sha256 "c84393f9f94a109589eaa289fb88406365e1fc4248745efb5b22f380fcfab7f2"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.337.0/nikcli-ai-darwin-arm64.zip"
      sha256 "35dec87673e8fecb04f50a403ccce859255c9d0fc4c52d83ed77d7da7b109d79"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.337.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "56be57d8f38df6df29b72d4ccf3c261cc8b108803015f7c494ad91d559b074ed"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.337.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "2419f1443ee8de5c8f170248ca1361b8758c9364f712a9afe7c3525fb9f5396d"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


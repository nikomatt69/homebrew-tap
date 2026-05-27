# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-05-27T01:31:14.506Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.30.0/nikcli-ai-darwin-x64.zip"
      sha256 "a3ad2e46c2936d1b2bdcd1333890c1d822b2ca0b66d8248adf8706c432a529ac"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.30.0/nikcli-ai-darwin-arm64.zip"
      sha256 "e03614bb00968e2d219350f773b1346dbbde33447e26b8d0d3d8e3ca828ac656"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.30.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "c984dc80f72469853bb716d97aac90fe2fad786a546533b25caffc665a486f63"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.30.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "a9b1f62dbc69852e34982ed1a07dbfaa5093d6ce63b43aeeb5709496a663a2a4"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end


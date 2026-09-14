# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-14T13:23:45.998Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikomatt69/nikcli"
  version "1.352.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.352.0/nikcli-ai-darwin-x64.zip"
      sha256 "bf2964015e357189344d15f80168411ba70cca2f467bf400b82af3a891e7ff90"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.352.0/nikcli-ai-darwin-arm64.zip"
      sha256 "75dec35abbaefa2ae556171bd46db6ea3848d5f55a54637f74d20d285fb9fb92"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.352.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "3268a003c106ce98793e725431beddb908c8998bc20f1521a23354c800bc7dc7"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikomatt69/nikcli/releases/download/v1.352.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "46d195ad2205f7480e1fabbf67fd39292f593d220403bddf2599676e09f1f987"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

